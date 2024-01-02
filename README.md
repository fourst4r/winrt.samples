# winrt.samples
 
Some steps are required for building in Visual Studio:
- including the Haxe generated sources (myApp/include & myApp/src) into the project (due to limitations of .vcxproj files)

Note at the moment you can't run the .exe outside of Visual Studio because it is a packaged app.

TODO: [unpackaged apps](https://learn.microsoft.com/en-us/windows/apps/windows-app-sdk/tutorial-unpackaged-deployment?tabs=cpp)

Demos to port:
https://github.com/microsoft/WinUI-3-Demos/tree/master/src/Build2020Demo/DemoBuildCpp/DemoBuildCpp/DemoBuildCpp
https://github.com/sotanakamura/winui-rust/blob/main/src/main.rs