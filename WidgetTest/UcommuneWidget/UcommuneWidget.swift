//
//  UcommuneWidget.swift
//  UcommuneWidget
//
//  Created by zhangjingfei on 20/11/2020.
//
import WidgetKit
import SwiftUI

struct SimpleEntry: TimelineEntry
{
    public let date: Date
}

struct PlaceholderView : View
{
    //这里是PlaceholderView - 提醒用户选择部件功能
    var body: some View {
        Text("Place Holder")
    }
}


@main
struct Widgets: WidgetBundle
{
    @WidgetBundleBuilder
    var body: some Widget
    {
        FourToolWidgetWidget()
        SmallProductWidget()
        MediumProductWidget()
        
    }
}

