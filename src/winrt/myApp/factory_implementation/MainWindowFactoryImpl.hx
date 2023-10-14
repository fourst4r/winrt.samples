package winrt.myApp.factory_implementation;

@:nativeTypeCode("MainWindowT<{type0}, {type1}>")
extern class MainWindowT<T, TImpl> {}

@:keep
@:filename("winrt_myApp_implementation_MainWindow")
@:valueType
@:nativeName("MainWindow")
class MainWindowFactoryImpl extends MainWindowT<MainWindowFactoryImpl, winrt.myApp.implementation.MainWindow> {
    public function new() {}
}

// class MainWindowFactoryImpl {

// }