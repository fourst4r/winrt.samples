package myApp;

import winrt.tools.IXaml;
import winrt.microsoft.ui.xaml.Application;
import winrt.microsoft.ui.xaml.LaunchActivatedEventArgs;
import cxx.ConstRef;

@:keep
@:valueType
@:winrt.xaml
@:winrt.noIdl
class App extends Application implements IXaml {
    public function new() {
        super();
        InitializeComponent();
        // theres some extra shit after this to handle exceptions
    }

    override function OnLaunched(args:ConstRef<LaunchActivatedEventArgs>) {
        final window:cxx.Value<myApp.MainWindow> = cxx.Syntax.NoAssign;
        window.Activate();
    }

    extern function InitializeComponent():Void;
}