package;

import cxx.Syntax;
import winrt.WinRT;
import winrt.HString;
import winrt.windows.foundation.Uri;
import winrt.microsoft.ui.xaml.Style;
import winrt.microsoft.ui.xaml.VerticalAlignment;
import winrt.microsoft.ui.xaml.HorizontalAlignment;
import winrt.microsoft.ui.xaml.ThicknessHelper;
import winrt.microsoft.ui.xaml.controls.StackPanel;
import winrt.microsoft.ui.xaml.controls.TextBlock;
import winrt.microsoft.ui.xaml.controls.HyperlinkButton;
import winrt.microsoft.ui.xaml.controls.Button;
import winrt.microsoft.ui.xaml.Window;
import winrt.microsoft.ui.xaml.Application;
using winrt.Extensions;

// TODO: make these metas removable
@:headerInclude("unknwn.h", true)
@:cppInclude("winrt/Microsoft.UI.Xaml.Controls.Primitives.h", true)
class Main {
    static function main() {
        App.start(() -> {
            final window:cxx.Value<Window> = Syntax.NoAssign;

            var panel:cxx.Value<StackPanel> = Syntax.NoAssign;
            panel.HorizontalAlignment(HorizontalAlignment.Center);
            panel.VerticalAlignment(VerticalAlignment.Center);

            var title:cxx.Value<TextBlock> = Syntax.NoAssign;
            title.Style(Application.Current().Resources().Lookup(boxValue(("TitleTextBlockStyle":HString))).as(Style));
            title.Text(("WinUI 3 in Haxe!":HString));
            title.HorizontalAlignment(HorizontalAlignment.Center);

            var project:cxx.Value<HyperlinkButton> = Syntax.NoAssign;
            project.Content(boxValue(("Based on the work of Sota Nakamura":HString)));
            project.NavigateUri(Uri.make("https://github.com/sotanakamura/winui3-without-xaml"));
            project.HorizontalAlignment(HorizontalAlignment.Center);

            var button:cxx.Value<Button> = cxx.Syntax.NoAssign;
            button.Content(boxValue(("Click":HString)));
            button.Click((sender, args) -> {
                sender.as(Button).Content(boxValue(("Thank You!":HString)));
            });
            button.HorizontalAlignment(HorizontalAlignment.Center);
            button.Margin(ThicknessHelper.FromUniformLength(20));

            panel.Children().Append(title);
            panel.Children().Append(project);
            panel.Children().Append(button);

            window.Content(panel);
            window.Activate();
        });
    }
}