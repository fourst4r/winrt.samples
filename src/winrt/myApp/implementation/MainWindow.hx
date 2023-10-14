package winrt.myApp.implementation;

import winrt.microsoft.ui.xaml.ThicknessHelper;
import winrt.microsoft.ui.xaml.controls.HyperlinkButton;
import winrt.windows.foundation.Uri;
import winrt.microsoft.ui.xaml.Application;
import winrt.microsoft.ui.xaml.Style;
import winrt.microsoft.ui.xaml.controls.TextBlock;
import winrt.microsoft.ui.xaml.VerticalAlignment;
import winrt.microsoft.ui.xaml.HorizontalAlignment;
import winrt.microsoft.ui.xaml.controls.StackPanel;
import cxx.Syntax;
import winrt.microsoft.ui.xaml.controls.Button;
import winrt.microsoft.ui.xaml.Window;
import winrt.tools.RuntimeClass;
import winrt.WinRT;
using winrt.Extensions;

@:cppFileCode('
#if __has_include("MainWindow.g.cpp")
#include "MainWindow.g.cpp"
#endif
')
// @:headerCode('
// // Forward declare implementation class
// //namespace winrt::myApp::implementation {
// //    class MainWindow;
// //}

// namespace winrt::myApp::factory_implementation {

// class MainWindow: public MainWindowT<winrt::myApp::factory_implementation::MainWindow, winrt::myApp::implementation::MainWindow> {
// public:
//     MainWindow();

//     HX_COMPARISON_OPERATORS(MainWindow)
// };
    
// }
// ')
@:valueType
@:headerInclude("pch.h")
class MainWindow extends RuntimeClass<MainWindow, Window> {
    public function new() {
        untyped __cpp__("//InitializeComponent() only needed for XAML");
        // final btn:cxx.Value<Button> = Syntax.NoAssign;
        // btn.Content(boxValue(("Thank You!":HString)));
        // btn.Click((sender, args) -> {
        //     sender.as(Button).Content(boxValue(("Clicked!":HString)));
        //     // btn.Content(boxValue(("Clicked!":HString)));
        // });
        // Content(btn);

        var panel:cxx.Value<StackPanel> = Syntax.NoAssign;
        panel.HorizontalAlignment(HorizontalAlignment.Center);
        panel.VerticalAlignment(VerticalAlignment.Center);

        var title:cxx.Value<TextBlock> = Syntax.NoAssign;
        title.Style(Application.Current().Resources().Lookup(boxValue(("TitleTextBlockStyle":HString))).as(Style));
        title.Text(("WinUI 3 in Haxe Without XAML!":HString));
        title.HorizontalAlignment(HorizontalAlignment.Center);

        var project:cxx.Value<HyperlinkButton> = Syntax.NoAssign;
        project.Content(boxValue(("Github Project Repository":HString)));
        project.NavigateUri(Uri.make("https://github.com/sotanakamura/winui3-without-xaml"));
        project.HorizontalAlignment(HorizontalAlignment.Center);

        var button:cxx.Value<Button> = cxx.Syntax.NoAssign;
        button.Content(boxValue(("Click":HString)));
        button.Click((sender, args) -> {
            sender.as(Button).Content(boxValue(("Thank You!":HString)));
        });
        button.HorizontalAlignment(HorizontalAlignment.Center);
        button.Margin(ThicknessHelper.FromUniformLength(20));

        Content(panel);
        panel.Children().Append(title);
        panel.Children().Append(project);
        panel.Children().Append(button);

    }
    public var varry:Int = 0;
    @:keep public function test() {}
    @:keep public function test1() {}
    @:keep public function test2() {}
    @:keep public function test3() {}
    @:keep public function test4() {}
}