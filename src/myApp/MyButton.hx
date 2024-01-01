package myApp;

import winrt.microsoft.ui.xaml.controls.Button;
import winrt.tools.IRuntimeClass;
import winrt.WinRT;
import winrt.HString;
using winrt.Extensions;

@:valueType
class MyButton extends Button implements IRuntimeClass {
    public function new() {
        this.Content(winrt.WinRT.boxValue(("MyButton":HString)));
    }

}