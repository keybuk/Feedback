FB9191598

Please see the attached sample project that demonstrates the issue:

If the View ends with an #endif”, e.g. because the last modifier on a view is specific to another platform, the Preview/Simulator is unable to compile the app because I assume it’s modifying the source in some way that makes a syntax error.

1. Create view
2. Added macOS-specific modifier to it

Preview should work

Preview failed to build, see attached screenshot.

The log message for Diagnostics was:

extra tokens following conditional compilation directive

----------------------------------------

CompileDylibError: Failed to build ContentView.swift

Compiling failed: extra tokens following conditional compilation directive

/Users/scott/Developer/SimulatorBrokenByEndif/Shared/ContentView.swift:17:15: error: extra tokens following conditional compilation directive
        #endif)
              ^


==================================

|  BuildInvocationError
|  
|  /Applications/Xcode-beta.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc -F /Applications/Xcode-beta.app/Contents/SharedFrameworks-iphonesimulator -enforce-exclusivity=checked -DDEBUG -sdk /Applications/Xcode-beta.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator15.0.sdk -target x86_64-apple-ios14.0-simulator -module-cache-path /Users/scott/Library/Developer/Xcode/DerivedData/ModuleCache.noindex -Xfrontend -serialize-debugging-options -enable-testing -swift-version 5 -I "/Users/scott/Library/Developer/Xcode/DerivedData/SimulatorBrokenByEndif-fkkajluiuvchpxbzdkkfoqcbfsph/Build/Intermediates.noindex/Previews/SimulatorBrokenByEndif (iOS)/Products/Debug-iphonesimulator" -F "/Users/scott/Library/Developer/Xcode/DerivedData/SimulatorBrokenByEndif-fkkajluiuvchpxbzdkkfoqcbfsph/Build/Intermediates.noindex/Previews/SimulatorBrokenByEndif (iOS)/Products/Debug-iphonesimulator" -emit-localized-strings -emit-localized-strings-path "/Users/scott/Library/Developer/Xcode/DerivedData/SimulatorBrokenByEndif-fkkajluiuvchpxbzdkkfoqcbfsph/Build/Intermediates.noindex/Previews/SimulatorBrokenByEndif (iOS)/Intermediates.noindex/SimulatorBrokenByEndif.build/Debug-iphonesimulator/SimulatorBrokenByEndif (iOS).build/Objects-normal/x86_64" -c -j32 -serialize-diagnostics -Xcc "-I/Users/scott/Library/Developer/Xcode/DerivedData/SimulatorBrokenByEndif-fkkajluiuvchpxbzdkkfoqcbfsph/Build/Intermediates.noindex/Previews/SimulatorBrokenByEndif (iOS)/Intermediates.noindex/SimulatorBrokenByEndif.build/Debug-iphonesimulator/SimulatorBrokenByEndif (iOS).build/swift-overrides.hmap" -Xcc -iquote -Xcc "/Users/scott/Library/Developer/Xcode/DerivedData/SimulatorBrokenByEndif-fkkajluiuvchpxbzdkkfoqcbfsph/Build/Intermediates.noindex/Previews/SimulatorBrokenByEndif (iOS)/Intermediates.noindex/SimulatorBrokenByEndif.build/Debug-iphonesimulator/SimulatorBrokenByEndif (iOS).build/SimulatorBrokenByEndif-generated-files.hmap" -Xcc "-I/Users/scott/Library/Developer/Xcode/DerivedData/SimulatorBrokenByEndif-fkkajluiuvchpxbzdkkfoqcbfsph/Build/Intermediates.noindex/Previews/SimulatorBrokenByEndif (iOS)/Intermediates.noindex/SimulatorBrokenByEndif.build/Debug-iphonesimulator/SimulatorBrokenByEndif (iOS).build/SimulatorBrokenByEndif-own-target-headers.hmap" -Xcc "-I/Users/scott/Library/Developer/Xcode/DerivedData/SimulatorBrokenByEndif-fkkajluiuvchpxbzdkkfoqcbfsph/Build/Intermediates.noindex/Previews/SimulatorBrokenByEndif (iOS)/Intermediates.noindex/SimulatorBrokenByEndif.build/Debug-iphonesimulator/SimulatorBrokenByEndif (iOS).build/SimulatorBrokenByEndif-all-target-headers.hmap" -Xcc -iquote -Xcc "/Users/scott/Library/Developer/Xcode/DerivedData/SimulatorBrokenByEndif-fkkajluiuvchpxbzdkkfoqcbfsph/Build/Intermediates.noindex/Previews/SimulatorBrokenByEndif (iOS)/Intermediates.noindex/SimulatorBrokenByEndif.build/Debug-iphonesimulator/SimulatorBrokenByEndif (iOS).build/SimulatorBrokenByEndif-project-headers.hmap" -Xcc "-I/Users/scott/Library/Developer/Xcode/DerivedData/SimulatorBrokenByEndif-fkkajluiuvchpxbzdkkfoqcbfsph/Build/Intermediates.noindex/Previews/SimulatorBrokenByEndif (iOS)/Products/Debug-iphonesimulator/include" -Xcc "-I/Users/scott/Library/Developer/Xcode/DerivedData/SimulatorBrokenByEndif-fkkajluiuvchpxbzdkkfoqcbfsph/Build/Intermediates.noindex/Previews/SimulatorBrokenByEndif (iOS)/Intermediates.noindex/SimulatorBrokenByEndif.build/Debug-iphonesimulator/SimulatorBrokenByEndif (iOS).build/DerivedSources-normal/x86_64" -Xcc "-I/Users/scott/Library/Developer/Xcode/DerivedData/SimulatorBrokenByEndif-fkkajluiuvchpxbzdkkfoqcbfsph/Build/Intermediates.noindex/Previews/SimulatorBrokenByEndif (iOS)/Intermediates.noindex/SimulatorBrokenByEndif.build/Debug-iphonesimulator/SimulatorBrokenByEndif (iOS).build/DerivedSources/x86_64" -Xcc "-I/Users/scott/Library/Developer/Xcode/DerivedData/SimulatorBrokenByEndif-fkkajluiuvchpxbzdkkfoqcbfsph/Build/Intermediates.noindex/Previews/SimulatorBrokenByEndif (iOS)/Intermediates.noindex/SimulatorBrokenByEndif.build/Debug-iphonesimulator/SimulatorBrokenByEndif (iOS).build/DerivedSources" -Xcc -DDEBUG=1 -working-directory /Users/scott/Developer/SimulatorBrokenByEndif "/Users/scott/Library/Developer/Xcode/DerivedData/SimulatorBrokenByEndif-fkkajluiuvchpxbzdkkfoqcbfsph/Build/Intermediates.noindex/Previews/SimulatorBrokenByEndif (iOS)/Intermediates.noindex/SimulatorBrokenByEndif.build/Debug-iphonesimulator/SimulatorBrokenByEndif (iOS).build/Objects-normal/x86_64/ContentView.2.preview-thunk.swift" -o "/Users/scott/Library/Developer/Xcode/DerivedData/SimulatorBrokenByEndif-fkkajluiuvchpxbzdkkfoqcbfsph/Build/Intermediates.noindex/Previews/SimulatorBrokenByEndif (iOS)/Intermediates.noindex/SimulatorBrokenByEndif.build/Debug-iphonesimulator/SimulatorBrokenByEndif (iOS).build/Objects-normal/x86_64/ContentView.2.preview-thunk.o" -module-name SimulatorBrokenByEndif_PreviewReplacement_ContentView_2 -Onone -Xfrontend -disable-modules-validate-system-headers

Note that there is no “)” in my source code at that line.
