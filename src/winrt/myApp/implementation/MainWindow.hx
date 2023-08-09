package winrt.myApp.implementation;

import winrt.microsoft.ui.xaml.Window;
import winrt.tools.RuntimeClass;

@:cppFileCode('
#if __has_include("MainWindow.g.cpp")
#include "MainWindow.g.cpp"
#endif
')
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