/**
 * @file sgd_impl.hpp
 * @author Ryan Curtin
 * @author Arun Reddy
 * @author Abhinav Moudgil
 *
 * Implementation of stochastic gradient descent.
 *
 * mlpack is free software; you may redistribute it and/or modify it under the
 * terms of the 3-clause BSD license.  You should have received a copy of the
 * 3-clause BSD license along with mlpack.  If not, see
 * http://www.opensource.org/licenses/BSD-3-Clause for more information.
 */
#ifndef MLPACK_CORE_OPTIMIZERS_SGD_SGD_IMPL_HPP
#define MLPACK_CORE_OPTIMIZERS_SGD_SGD_IMPL_HPP

// In case it hasn't been included yet.
#include "sgd.hpp"

namespace mlpack {
namespace optimization {

template<typename UpdatePolicyType, typename DecayPolicyType, typename TerminationPolicyType>
SGD<UpdatePolicyType, DecayPolicyType, TerminationPolicyType>::SGD(
    const double stepSize,
    const size_t batchSize,
    const bool shuffle,
    const UpdatePolicyType& updatePolicy,
    const DecayPolicyType& decayPolicy,
    const TerminationPolicyType& terminationPolicy,
    const bool resetUpdatePolicy) :
    stepSize(stepSize),
    batchSize(batchSize),
    shuffle(shuffle),
    updatePolicy(updatePolicy),
    decayPolicy(decayPolicy),
    terminationPolicy(terminationPolicy),
    resetUpdatePolicy(resetUpdatePolicy),
    overallObjective(0.0)
{ /* Nothing to do. */ }

//! Optimize the function (minimize).
template<typename UpdatePolicyType, typename DecayPolicyType, typename TerminationPolicyType>
template<typename DecomposableFunctionType>
double SGD<UpdatePolicyType, DecayPolicyType, TerminationPolicyType>::Optimize(
    DecomposableFunctionType& function,
    arma::mat& iterate)
{
  // Find the number of functions to use.
  const size_t numFunctions = function.NumFunctions();

  // To keep track of where we are and how things are going.
  size_t currentFunction = 0;
  overallObjective = 0;

  // Calculate the first objective function.
  for (size_t i = 0; i < numFunctions; i += batchSize)
  {
    const size_t effectiveBatchSize = std::min(batchSize, numFunctions - i);
    overallObjective += function.Evaluate(iterate, i, effectiveBatchSize);
  }
  
  // Initialize the update policy.
  if (resetUpdatePolicy)
    updatePolicy.Initialize(iterate.n_rows, iterate.n_cols);
  
  // Now iterate!
  arma::mat gradient(iterate.n_rows, iterate.n_cols);
  size_t currentIteration = 0;
  while (true)
  {
    // Is this iteration the start of a sequence?
    if ((currentFunction % numFunctions) == 0)
    {
      if (terminationPolicy.Converged(function, currentIteration, overallObjective)) {
        break;
      }

      overallObjective = 0;
      currentFunction = 0;

      if (shuffle) // Determine order of visitation.
        function.Shuffle();
    }

    // Find the effective batch size (the last batch may be smaller).
    const size_t effectiveBatchSize = std::min(batchSize,
        numFunctions - currentFunction);

    function.Gradient(iterate, currentFunction, gradient, effectiveBatchSize);

    // Use the update policy to take a step.
    updatePolicy.Update(iterate, stepSize, gradient);

    overallObjective += function.Evaluate(iterate, currentFunction,
        effectiveBatchSize);

    // Now update the learning rate if requested by the user.
    decayPolicy.Update(iterate, stepSize, gradient);

    currentIteration += effectiveBatchSize;
    currentFunction += effectiveBatchSize;
  }

  // Calculate final objective.
  overallObjective = 0;
  for (size_t i = 0; i < numFunctions; i += batchSize)
  {
    const size_t effectiveBatchSize = std::min(batchSize, numFunctions - i);
    overallObjective += function.Evaluate(iterate, i, effectiveBatchSize);
  }
  return overallObjective;
}

} // namespace optimization
} // namespace mlpack

#endif
