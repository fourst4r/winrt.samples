// Copyright (c) Microsoft Corporation and Contributors.
// Licensed under the MIT License.

#include "pch.h"
#include "MainWindow.h"
#if __has_include("MainWindow.g.cpp")
#include "MainWindow.g.cpp"
#endif

using namespace winrt;
using namespace Microsoft::UI::Xaml;
using namespace Microsoft::UI::Xaml::Controls;

// To learn more about WinUI, the WinUI project structure,
// and more about our project templates, see: http://aka.ms/winui-project-info.

namespace winrt::App2::implementation
{
    MainWindow::MainWindow()
    {
        StackPanel panel;
        panel.Orientation(Orientation::Horizontal);
        panel.HorizontalAlignment(HorizontalAlignment::Center);
        panel.VerticalAlignment(VerticalAlignment::Center);

        m_button.Content(winrt::box_value(L"Click Me"));
        m_button.Click({ this, &MainWindow::myButton_Click });

        panel.Children().Append(m_button);

        Content(panel);
    }

    int32_t MainWindow::MyProperty()
    {
        throw hresult_not_implemented();
    }

    void MainWindow::MyProperty(int32_t /* value */)
    {
        throw hresult_not_implemented();
    }

    void MainWindow::MyFunction() {

    }

    void MainWindow::myButton_Click(IInspectable const&, RoutedEventArgs const&)
    {
        m_button.Content(box_value(L"Clicked"));
    }
}
