package;

import winrt.microsoft.ui.xaml.Application;
import winrt.WinRT;
import myApp.App;

class Main {
    static function main() {
        initApartment(MultiThreaded);
        Application.Start(p -> {
            // until https://github.com/SomeRanDev/reflaxe.CPP/issues/40 is resolved
            untyped __cpp__("(void){0}", App);
            make(App);
        });
    }
}