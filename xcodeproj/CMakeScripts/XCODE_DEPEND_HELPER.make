# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.mlpack.Debug:
/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/lib/Debug/libmlpack.dylib:\
	/usr/local/lib/libarmadillo.dylib\
	/usr/local/lib/libboost_program_options-mt.dylib\
	/usr/local/lib/libboost_unit_test_framework-mt.dylib\
	/usr/local/lib/libboost_serialization-mt.dylib
	/bin/rm -f /Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/lib/Debug/libmlpack.dylib


PostBuild.mlpack.Release:
/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/lib/Release/libmlpack.dylib:\
	/usr/local/lib/libarmadillo.dylib\
	/usr/local/lib/libboost_program_options-mt.dylib\
	/usr/local/lib/libboost_unit_test_framework-mt.dylib\
	/usr/local/lib/libboost_serialization-mt.dylib
	/bin/rm -f /Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/lib/Release/libmlpack.dylib


PostBuild.mlpack.MinSizeRel:
/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/lib/MinSizeRel/libmlpack.dylib:\
	/usr/local/lib/libarmadillo.dylib\
	/usr/local/lib/libboost_program_options-mt.dylib\
	/usr/local/lib/libboost_unit_test_framework-mt.dylib\
	/usr/local/lib/libboost_serialization-mt.dylib
	/bin/rm -f /Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/lib/MinSizeRel/libmlpack.dylib


PostBuild.mlpack.RelWithDebInfo:
/Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/lib/RelWithDebInfo/libmlpack.dylib:\
	/usr/local/lib/libarmadillo.dylib\
	/usr/local/lib/libboost_program_options-mt.dylib\
	/usr/local/lib/libboost_unit_test_framework-mt.dylib\
	/usr/local/lib/libboost_serialization-mt.dylib
	/bin/rm -f /Users/alex/Documents/development/mogees/mogees-lib2-tools-mlpack/thirdParty/mogees-mlpack/xcodeproj/lib/RelWithDebInfo/libmlpack.dylib




# For each target create a dummy ruleso the target does not have to exist
/usr/local/lib/libarmadillo.dylib:
/usr/local/lib/libboost_program_options-mt.dylib:
/usr/local/lib/libboost_serialization-mt.dylib:
/usr/local/lib/libboost_unit_test_framework-mt.dylib:
