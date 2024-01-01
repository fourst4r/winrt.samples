package myApp;

import winrt.windows.web.http.HttpClient;
import winrt.HString;
import cxx.Value;
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
import winrt.tools.IRuntimeClass;
import winrt.WinRT;
using winrt.Extensions;

@:valueType
// @:headerInclude("pch.h")
class MainWindow extends Window implements IRuntimeClass {
    @:idl public var varry(default, default):Int;

    public function new() {
        final panel:Value<StackPanel> = Syntax.NoAssign;
        panel.HorizontalAlignment(HorizontalAlignment.Center);
        panel.VerticalAlignment(VerticalAlignment.Center);

        final title:Value<TextBlock> = Syntax.NoAssign;
        title.Style(Application.Current().Resources().Lookup(boxValue(("TitleTextBlockStyle":HString))).as(Style));
        title.Text(("WinUI 3 in Haxe Without XAML!":HString));
        title.HorizontalAlignment(HorizontalAlignment.Center);

        final project:Value<HyperlinkButton> = Syntax.NoAssign;
        project.Content(boxValue(("Based on the work of Sota Nakamura":HString)));
        project.NavigateUri(Uri.make("https://github.com/sotanakamura/winui3-without-xaml"));
        project.HorizontalAlignment(HorizontalAlignment.Center);

        final button:Value<myApp.MyButton> = Syntax.NoAssign;
        button.Content(boxValue(("Click":HString)));
        button.Click((sender, args) -> {
            final uri:Uri = Uri.make(toHString("http://www.contoso.com/get"));
            final client = new HttpClient();
            final async = client.GetStringAsync(uri);
            final results = async.get();
            // trace(toString(results)); 
            sender.as(Button).Content(boxValue(results));
            // sender.as(Button).Content(boxValue(("Thank You!":HString)));
        });
        button.HorizontalAlignment(HorizontalAlignment.Center);
        button.Margin(ThicknessHelper.FromUniformLength(20));
        
        Content(panel);
        panel.Children().Append(title);
        panel.Children().Append(project);
        panel.Children().Append(button);
        
    }

}