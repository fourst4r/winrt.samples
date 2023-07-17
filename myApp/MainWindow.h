// Copyright (c) Microsoft Corporation and Contributors.
// Licensed under the MIT License.

#pragma once

#include "MainWindow.g.h"

namespace winrt::App2::implementation
{
    struct MainWindow : MainWindowT<MainWindow>
    {
      

        MainWindow();

        int32_t MyProperty();
        void MyProperty(int32_t value);

        void MyFunction();

        void myButton_Click(Windows::Foundation::IInspectable const& sender, Microsoft::UI::Xaml::RoutedEventArgs const& args);

    private:
        Microsoft::UI::Xaml::Controls::Button m_button;
    };
}

namespace winrt::App2::factory_implementation
{
    struct MainWindow : MainWindowT<MainWindow, implementation::MainWindow>
    {
    };
}
