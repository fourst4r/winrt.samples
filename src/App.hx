package;

import cxx.ConstRef;
import winrt.WinRT;
import winrt.microsoft.ui.xaml.Application;
import winrt.microsoft.ui.xaml.LaunchActivatedEventArgs;

/**
 * This class is generated by the XAML compiler from the App.xaml file.
 */
@:valueType
@:include("App.xaml.g.h")
@:addInclude("unknwn.h", true)
@:nativeTypeCode("winrt::myApp::implementation::AppT<{type0}>")
extern class AppT<T> extends Application {
    function InitializeComponent():Void;
    overload function GetXamlType(type:cxx.ConstRef<winrt.windows.ui.xaml.interop.TypeName>):winrt.microsoft.ui.xaml.markup.IXamlType;
    overload function GetXamlType(type:cxx.ConstRef<winrt.HString>):winrt.microsoft.ui.xaml.markup.IXamlType;
    function GetXmlnsDefinitions():winrt.ComArray<winrt.microsoft.ui.xaml.markup.XmlnsDefinition>;
}

/**
 * WinUI 3 application entrypoint class.
 * This is the code-behind for the one and only XAML file required as part
 * of a WinUI 3 application. 
 */
@:keep
@:valueType
@:filename("App.xaml")
class App extends AppT<App> {
    static dynamic function _onLaunched() {}

    public function new() {
        InitializeComponent();
    }

    public static function start(onLaunched:()->Void) {
        initApartment(SingleThreaded);
        Application.Start(p -> {
            @:privateAccess App._onLaunched = onLaunched;
            make(App);
        });
    }

    override function OnLaunched(args:ConstRef<LaunchActivatedEventArgs>) {
        App._onLaunched();
    }
}