package winrt.myApp.implementation;

import winrt.microsoft.ui.xaml.Style;
import winrt.microsoft.ui.xaml.VerticalAlignment;
import winrt.microsoft.ui.xaml.HorizontalAlignment;
import winrt.microsoft.ui.xaml.ThicknessHelper;
import winrt.microsoft.ui.xaml.controls.StackPanel;
import winrt.microsoft.ui.xaml.controls.TextBlock;
import winrt.microsoft.ui.xaml.controls.HyperlinkButton;
import winrt.HString;
import winrt.microsoft.ui.xaml.xamltypeinfo.XamlControlsXamlMetaDataProvider;
import winrt.microsoft.ui.xaml.LaunchActivatedEventArgs;
import cxx.Syntax;
import winrt.microsoft.ui.xaml.controls.Button;
import winrt.microsoft.ui.xaml.Window;
import cxx.ConstRef;
import winrt.microsoft.ui.xaml.markup.IXamlMetadataProvider;
import winrt.WinRT;
import winrt.microsoft.ui.xaml.Application;
import winrt.tools.RuntimeClass;

using winrt.Extensions;

@:valueType
class MainWindow extends RuntimeClass<MainWindow, Window> {
    public function new() {}
    public var varry:Int = 0;
    @:keep public function test() {}
    @:keep public function test1() {}
    @:keep public function test2() {}
    @:keep public function test3() {}
    @:keep public function test4() {}
}

@:valueType
class MyButton extends RuntimeClass<MyButton, Button> {
    public function new() {}
    public var varry:Int = 0;
    @:keep public function test() {}
    @:keep public function test1() {}
    @:keep public function test2() {}
    @:keep public function test3() {}
    @:keep public function test4() {}
}

// This class is generated by the XAML compiler from the App.xaml file.
@:nativeTypeCode("AppT<{type0}>")
extern class AppT<T> extends Application {}

class App /*extends AppT<App>*/ {
    public function new() {
    }

    /*override*/ function OnLaunched(args:ConstRef<LaunchActivatedEventArgs>) {
        $type(MainWindow);
        var window = make(MainWindow);
        window.Activate();
    }
}

class Main {

    static function main() {
        new App();
    }

}
// class MainWindow extends RuntimeClass<MainWindow, Window> {

// }


/**
 * Sample 3. A window without WinUI style resources
 */
// @:nativeTypeCode("winrt::Microsoft::UI::Xaml::WindowT<{type0}>")
// extern class WindowT<T> extends Window {}

// @:valueType
// class MainWindow extends WindowT<MainWindow> {
//     public function new() {
//         var panel:cxx.Value<StackPanel> = Syntax.NoAssign;
//         panel.HorizontalAlignment(HorizontalAlignment.Center);
//         panel.VerticalAlignment(VerticalAlignment.Center);

//         var title:cxx.Value<TextBlock> = Syntax.NoAssign;
//         title.Style(Application.Current().Resources().Lookup(boxValue(("TitleTextBlockStyle":HString))).as(Style));
//         title.Text(("WinUI 3 in Haxe Without XAML!":HString));
//         title.HorizontalAlignment(HorizontalAlignment.Center);

//         var project:cxx.Value<HyperlinkButton> = Syntax.NoAssign;
//         project.Content(boxValue(("Github Project Repository":HString)));
//         project.NavigateUri(Uri.make("https://github.com/sotanakamura/winui3-without-xaml"));
//         project.HorizontalAlignment(HorizontalAlignment.Center);

//         var button:cxx.Value<Button> = cxx.Syntax.NoAssign;
//         button.Content(boxValue(("Click":HString)));
//         button.Click((sender, args) -> {
//             sender.as(Button).Content(boxValue(("Thank You!":HString)));
//         });
//         button.HorizontalAlignment(HorizontalAlignment.Center);
//         button.Margin(ThicknessHelper.FromUniformLength(20));

//         Content(panel);
//         panel.Children().Append(title);
//         panel.Children().Append(project);
//         panel.Children().Append(button);
        

//     }
// }

// @:nativeTypeCode("winrt::Microsoft::UI::Xaml::ApplicationT<{type0}, {type1}>")
// extern class ApplicationT<T, TInterface> extends Application {}

// @:valueType
// class App extends ApplicationT<App, IXamlMetadataProvider> {
//     private var window:Window;
//     private var provider:XamlControlsXamlMetaDataProvider;

//     public function new() {}

//     public override function OnLaunched(args:ConstRef<LaunchActivatedEventArgs>) {
//         // Resources().MergedDictionaries().Append(new XamlControlsResources());

//         window = make(MainWindow);
//         window.Activate();
//     }
//     public function GetXamlType(type:TypeName) {
//         return provider.GetXamlType(type);
//     }
//     @:native("GetXamlType")
//     public function GetXamlType2(fullname:winrt.HString) {
//         return provider.GetXamlType(fullname);
//     }
//     public function GetXmlnsDefinitions() {
//         return provider.GetXmlnsDefinitions();
//     }
// }

// @:include("WindowsAppSDK-VersionInfo.h", true)
// @:native("Microsoft::WindowsAppSDK::Release")
// extern class Release {
//     static final MajorMinor: cxx.num.UInt32;
//     static final VersionTag: cxx.Ptr<cxx.num.UInt16>;
// }

// @:include("WindowsAppSDK-VersionInfo.h", true)
// @:native("Microsoft::WindowsAppSDK::Runtime::Version")
// extern class RuntimeVersion {
//     static final UInt64: cxx.num.UInt64;
// }

// @:include("MddBootstrap.h", true)
// @:native("MddBootstrapInitializeOptions")
// extern enum MddBootstrapInitializeOptions {
//     @:native("MddBootstrapInitializeOptions_None") None;
//     @:native("MddBootstrapInitializeOptions_OnError_DebugBreak") OnError_DebugBreak;
//     @:native("MddBootstrapInitializeOptions_OnError_DebugBreak_IfDebuggerAttached") OnError_DebugBreak_IfDebuggerAttached;
//     @:native("MddBootstrapInitializeOptions_OnError_FailFast") OnError_FailFast;
//     @:native("MddBootstrapInitializeOptions_OnNoMatch_ShowUI") OnNoMatch_ShowUI;
//     @:native("MddBootstrapInitializeOptions_OnPackageIdentity_NOOP") OnPackageIdentity_NOOP;
// }

// @:include("MddBootstrap.h", true)
// @:native("MddBootstrapInitialize2")
// extern function mddBootstrapInitialize2(majorMinorVersion:cxx.num.UInt32, versionTag:cxx.Ptr<cxx.num.UInt16>, minVersion:Dynamic, options:MddBootstrapInitializeOptions):winrt.HResult;

// @:include("MddBootstrap.h", true)
// @:native("MddBootstrapShutdown")
// extern function mddBootstrapShutdown():Void;

// class Main {
//     public static function main() {
//         initApartment();

//         // mddBootstrapInitialize2(
//         //     Release.MajorMinor,
//         //     Release.VersionTag,
//         //     untyped __cpp__("PACKAGE_VERSION{{0}}", RuntimeVersion.UInt64),
//         //     OnNoMatch_ShowUI
//         // );

//         Application.Start((x) -> {
//             var app:Application = make(App);
//             trace(app);
//         });
        
//         // mddBootstrapShutdown();

//         var a:Null<App> = null;
//         trace(a);
//         var b:Null<MainWindow> = null;
//         trace(b);
//     }
// }



/*
    Sample 2: Simple Window
*/
// @:include("WindowsAppSDK-VersionInfo.h", true)
// @:native("Microsoft::WindowsAppSDK::Release")
// extern class Release {
//     static final MajorMinor: cxx.num.UInt32;
//     static final VersionTag: cxx.Ptr<cxx.num.UInt16>;
// }

// @:include("WindowsAppSDK-VersionInfo.h", true)
// @:native("Microsoft::WindowsAppSDK::Runtime::Version")
// extern class RuntimeVersion {
//     static final UInt64: cxx.num.UInt64;
// }

// @:include("MddBootstrap.h", true)
// @:native("MddBootstrapInitializeOptions")
// extern enum MddBootstrapInitializeOptions {
//     @:native("MddBootstrapInitializeOptions_None") None;
//     @:native("MddBootstrapInitializeOptions_OnError_DebugBreak") OnError_DebugBreak;
//     @:native("MddBootstrapInitializeOptions_OnError_DebugBreak_IfDebuggerAttached") OnError_DebugBreak_IfDebuggerAttached;
//     @:native("MddBootstrapInitializeOptions_OnError_FailFast") OnError_FailFast;
//     @:native("MddBootstrapInitializeOptions_OnNoMatch_ShowUI") OnNoMatch_ShowUI;
//     @:native("MddBootstrapInitializeOptions_OnPackageIdentity_NOOP") OnPackageIdentity_NOOP;
// }

// @:include("MddBootstrap.h", true)
// @:native("MddBootstrapInitialize2")
// extern function mddBootstrapInitialize2(majorMinorVersion:cxx.num.UInt32, versionTag:cxx.Ptr<cxx.num.UInt16>, minVersion:Dynamic, options:MddBootstrapInitializeOptions):winrt.HResult;

// @:include("MddBootstrap.h", true)
// @:native("MddBootstrapShutdown")
// extern function mddBootstrapShutdown():Void;

// class Main {
//     public static function main() {
//         initApartment();

//         mddBootstrapInitialize2(
//             Release.MajorMinor,
//             Release.VersionTag,
//             untyped __cpp__("PACKAGE_VERSION{{0}}", RuntimeVersion.UInt64),
//             OnNoMatch_ShowUI
//         );

//         Application.Start((x) -> {
//             var app:cxx.Value<Application> = Syntax.NoAssign;
//             var window:cxx.Value<Window> = Syntax.NoAssign;
// 		    window.Activate();
//             trace(app);
//         });
        
//         mddBootstrapShutdown();
//     }
// }



/* 
    Sample 1: Simple HTTP GET request
*/
// import winrt.WinRT;
// import winrt.windows.foundation.Uri;
// import winrt.windows.web.http.HttpClient;
// using winrt.Extensions;

// class Main {
//     public static function main() {
//         initApartment();
//         var uri:Uri = Uri.make(toHString("http://www.contoso.com/get"));
//         var client = new HttpClient();
//         var async = client.GetStringAsync(uri);
//         var results = async.get();
//         trace(toString(results));
//     }
// }