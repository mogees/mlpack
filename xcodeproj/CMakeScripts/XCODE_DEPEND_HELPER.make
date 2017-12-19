# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.mlpack.Debug:
/Users/alex/Documents/development/mogees/mogees-tools/thirdParty/mogees-mlpack/xcodeproj/lib/Debug/libmlpack.a:
	/bin/rm -f /Users/alex/Documents/development/mogees/mogees-tools/thirdParty/mogees-mlpack/xcodeproj/lib/Debug/libmlpack.a


PostBuild.mlpack.Release:
/Users/alex/Documents/development/mogees/mogees-tools/thirdParty/mogees-mlpack/xcodeproj/lib/Release/libmlpack.a:
	/bin/rm -f /Users/alex/Documents/development/mogees/mogees-tools/thirdParty/mogees-mlpack/xcodeproj/lib/Release/libmlpack.a


PostBuild.mlpack.MinSizeRel:
/Users/alex/Documents/development/mogees/mogees-tools/thirdParty/mogees-mlpack/xcodeproj/lib/MinSizeRel/libmlpack.a:
	/bin/rm -f /Users/alex/Documents/development/mogees/mogees-tools/thirdParty/mogees-mlpack/xcodeproj/lib/MinSizeRel/libmlpack.a


PostBuild.mlpack.RelWithDebInfo:
/Users/alex/Documents/development/mogees/mogees-tools/thirdParty/mogees-mlpack/xcodeproj/lib/RelWithDebInfo/libmlpack.a:
	/bin/rm -f /Users/alex/Documents/development/mogees/mogees-tools/thirdParty/mogees-mlpack/xcodeproj/lib/RelWithDebInfo/libmlpack.a




# For each target create a dummy ruleso the target does not have to exist
