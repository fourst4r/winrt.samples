package myApp;

import winrt.microsoft.ui.xaml.controls.ColorPicker;
import winrt.microsoft.ui.xaml.controls.ToggleSwitch;
import winrt.microsoft.ui.xaml.controls.Slider;
import winrt.microsoft.ui.xaml.controls.RatingControl;
import winrt.microsoft.ui.xaml.controls.RadioButton;
import winrt.microsoft.ui.xaml.controls.ComboBox;
import winrt.microsoft.ui.xaml.controls.ToggleSplitButton;
import winrt.microsoft.ui.xaml.controls.SplitButton;
import winrt.microsoft.ui.xaml.controls.primitives.ToggleButton;
import winrt.microsoft.ui.xaml.controls.DropDownButton;
import winrt.microsoft.ui.xaml.controls.Grid;
import winrt.microsoft.ui.xaml.controls.ColumnDefinition;
import winrt.HString;
import winrt.microsoft.ui.xaml.ThicknessHelper;
import winrt.microsoft.ui.xaml.controls.StackPanel;
import winrt.microsoft.ui.xaml.Window;
import winrt.tools.IRuntimeClass;
import winrt.WinRT;
using winrt.Extensions;

@:valueType
class MainWindow extends Window implements IRuntimeClass {
    public function new() {
        super();
        
        final grid = new Grid();
        final col1 = new ColumnDefinition();
        col1.MaxWidth(500);
        final col2 = new ColumnDefinition();
        grid.ColumnDefinitions().Append(col1);
        grid.ColumnDefinitions().Append(col2);

        final stackpanel = new StackPanel();
        stackpanel.SetValue(Grid.ColumnProperty(), boxValue(0));

        final button = new myApp.MyButton();
        button.Content(boxValue(("Button":HString)));
        button.Margin(ThicknessHelper.FromUniformLength(10));
        stackpanel.Children().Append(button);

        final dropdownbutton = new DropDownButton();
        dropdownbutton.Content(boxValue(("DropDownButton":HString)));
        dropdownbutton.Margin(ThicknessHelper.FromUniformLength(10));
        stackpanel.Children().Append(dropdownbutton);

        final togglebutton = new ToggleButton();
        togglebutton.Content(boxValue(("ToggleButton":HString)));
        togglebutton.Margin(ThicknessHelper.FromUniformLength(10));
        stackpanel.Children().Append(togglebutton);

        final splitbutton = new SplitButton();
        splitbutton.Content(boxValue(("SplitButton":HString)));
        splitbutton.Margin(ThicknessHelper.FromUniformLength(10));
        stackpanel.Children().Append(splitbutton);

        final togglesplitbutton = new ToggleSplitButton();
        togglesplitbutton.Content(boxValue(("ToggleSplitButton":HString)));
        togglesplitbutton.Margin(ThicknessHelper.FromUniformLength(10));
        stackpanel.Children().Append(togglesplitbutton);

        final combobox = new ComboBox();
        combobox.Items().Append(boxValue(("ComboBox":HString)));
        combobox.Margin(ThicknessHelper.FromUniformLength(10));
        stackpanel.Children().Append(combobox);

        final radiobutton = new RadioButton();
        radiobutton.Content(boxValue(("RadioButton":HString)));
        radiobutton.Margin(ThicknessHelper.FromUniformLength(10));
        stackpanel.Children().Append(radiobutton);

        final ratingcontrol = new RatingControl();
        ratingcontrol.Margin(ThicknessHelper.FromUniformLength(10));
        stackpanel.Children().Append(ratingcontrol);

        final slider = new Slider();
        slider.Margin(ThicknessHelper.FromUniformLength(10));
        stackpanel.Children().Append(slider);

        final toggleswitch = new ToggleSwitch();
        toggleswitch.Margin(ThicknessHelper.FromUniformLength(10));
        stackpanel.Children().Append(toggleswitch);

        final colorpicker = new ColorPicker();
        colorpicker.SetValue(Grid.ColumnProperty(), boxValue(1));

        grid.Children().Append(stackpanel);
        grid.Children().Append(colorpicker);
        Content(grid);
    }
}