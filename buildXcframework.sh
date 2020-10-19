

xcodebuild archive \
-project ComponentKit.xcodeproj \
-scheme ComponentKit \
-sdk iphonesimulator \
-destination generic/platform=iOS \
-archivePath "archives/MyScheme-iOS-Simulator" \
SKIP_INSTALL=NO \
ARCHS=x86_64 \
BUILD_LIBRARY_FOR_DISTRIBUTION=YES


xcodebuild archive \
-project ComponentKit.xcodeproj \
-scheme ComponentKit \
-destination generic/platform=iOS \
-sdk iphoneos \
-archivePath "archives/MyScheme-iOS" \
SKIP_INSTALL=NO \
ARCHS=arm64 \
BUILD_LIBRARY_FOR_DISTRIBUTION=YES | xcpretty


# xcodebuild -create-xcframework \
#  -framework /Users/basil/remote_repo/componentkit/archives/MyScheme-iOS.xcarchive/Products/@rpath/ComponentKit.framework \
#  -debug-symbols /Users/basil/remote_repo/componentkit/archives/MyScheme-iOS.xcarchive/dSYMs \
#  -framework /Users/basil/remote_repo/componentkit/archives/MyScheme-iOS-Simulator.xcarchive/Products/@rpath/ComponentKit.framework \
#  -debug-symbols /Users/basil/remote_repo/componentkit/archives/MyScheme-iOS-Simulator.xcarchive/dSYMs \
#  -output ComponentKit.xcframework


   xcodebuild -create-xcframework \
  -framework archives/MyScheme-iOS.xcarchive/Products/@rpath/ComponentKit.framework \
  -framework archives/MyScheme-iOS-Simulator.xcarchive/Products/@rpath/ComponentKit.framework \
  -output ios/ComponentKit.xcframework