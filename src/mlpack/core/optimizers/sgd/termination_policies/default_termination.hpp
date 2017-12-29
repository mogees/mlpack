/**
 * @file default_termination.hpp
 * @author Alessandro Saccoia
 *
 * Default termination policy: returns always false letting the algorithm
 *
 * mlpack is free software; you may redistribute it and/or modify it under the
 * terms of the 3-clause BSD license.  You should have received a copy of the
 * 3-clause BSD license along with mlpack.  If not, see
 * http://www.opensource.org/licenses/BSD-3-Clause for more information.
 */
#ifndef MLPACK_CORE_OPTIMIZERS_SGD_DEFAULT_TERMINATION
#define MLPACK_CORE_OPTIMIZERS_SGD_DEFAULT_TERMINATION

#include <mlpack/prereqs.hpp>

namespace mlpack {
namespace optimization {

/**
 * Definition of the DefaultTermination class. Use this as a template for your own.
 */
class DefaultTermination
{
 public:
  /**
   * This constructor is called before the first iteration.
   */
  DefaultTermination(const size_t maxIterations, const double tolerance = 1e-5) :
    maxIterations(maxIterations), tolerance(tolerance), lastObjective(DBL_MAX)
  { /* Do nothing. */ }
  
  /**
   * Called at each SGD update step, allows to test the accuracy on validation data
   *
   * @param function The model being optimized with SGD
   * @return wether or not to continue the termination
   */
  template<typename DecomposableFunctionType>
  bool Converged(DecomposableFunctionType& function, size_t currentIteration, double currentObjective)
  {
    if (maxIterations && currentIteration >= maxIterations) {
      Log::Info << "SGD: returned after " << maxIterations << "; "
      << " iterations." << std::endl;
      return true;
    }
    if (std::isnan(currentObjective) || std::isinf(currentObjective))
    {
      Log::Warn << "SGD: converged to " << currentObjective << "; terminating"
      << " with failure.  Try a smaller step size?" << std::endl;
      return true;
    }
    
    if (std::abs(lastObjective - currentObjective) < tolerance)
    {
      Log::Info << "SGD: minimized within tolerance " << tolerance << "; "
        << "terminating optimization." << std::endl;
      return true;
    }
    lastObjective = currentObjective;
    return false;
  }
private:
  const size_t maxIterations;
  const double tolerance;
  double lastObjective;
};

} // namespace optimization
} // namespace mlpack

#endif
