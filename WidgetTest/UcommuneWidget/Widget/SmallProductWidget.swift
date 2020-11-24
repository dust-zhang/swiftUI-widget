//
//  ProductWidget.swift
//  WidgetTest
//
//  Created by zhangjingfei on 20/11/2020.
//

import WidgetKit
import SwiftUI
import Intents

struct SmallProductWidgetProvider: TimelineProvider {

    //提供一个默认的视图，当网络数据请求失败或者其他一些异常的时候，用于展示
    func placeholder(in context: Context) -> SmallProductWidgetSimpleEntry {
        SmallProductWidgetSimpleEntry(date: Date())
    }

    //为了在小部件库中显示小部件，WidgetKit要求提供者提供预览快照，在组件的添加页面可以看到效果
    func getSnapshot(in context: Context, completion: @escaping (SmallProductWidgetSimpleEntry) -> ()) {
        let entry = SmallProductWidgetSimpleEntry(date: Date())
        completion(entry)
    }
    //在这个方法内可以进行网络请求，拿到的数据保存在对应的entry中，调用completion之后会到刷新小组件
    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SmallProductWidgetSimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SmallProductWidgetSimpleEntry(date: entryDate)
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SmallProductWidgetSimpleEntry: TimelineEntry {
    public let date: Date
}

struct SmallProductWidgetEntryView : View {
    //这里是Widget的类型判断
    @Environment(\.widgetFamily) var family: WidgetFamily
    var entry: SmallProductWidgetProvider.Entry
    
    @ViewBuilder
    var body: some View
    {
        //加载四个快捷方式
        switch family
        {
            case .systemSmall:
                SmallProductView()
            default:
                Text("")
        }
    }
}

struct SmallProductWidget: Widget {
    private let kind: String = "SmallProduct"
    public var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: SmallProductWidgetProvider()) { entry in
            SmallProductWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("SmallProduct")
        .description("SmallProduct")
        .supportedFamilies([.systemSmall])
        
    }
}

struct SmallProductWidget_Previews: PreviewProvider {
    static var previews: some View {
        Text("Hello, World!")
    }
}
