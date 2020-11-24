//
//  FourToolView.swift
//  WidgetTest
//
//  Created by zhangjingfei on 20/11/2020.
//

import SwiftUI

struct FourToolView: View
{
    var strDate:String
    
    var body: some View
    {
        ZStack
        {
            FourBGMediumView()
//                .widgetURL(URL(string: "33"))
            HStack
            {
                //日期
                Text("20")
                    .font(.system(size: 42))
                    .bold()
                    .foregroundColor(Color(red: 29/255, green: 29/255, blue: 29/255))
                    .padding(EdgeInsets(top: -70, leading: -40, bottom: 0, trailing: 0))
                    .frame(width: 101, height: 66, alignment: .center)
                
                HStack
                {
                    createButtonAndName(btnImage: "widgetQR", btnName: "扫一扫", btnUrl: "urwork://qr")
                }
                
                HStack
                {
                    createButtonAndName(btnImage: "widgetMeetingroom", btnName: "订会议室",btnUrl: "urwork://meetingroom")
                }
                
                HStack
                {
                    createButtonAndName(btnImage: "widgetSignIn", btnName: "签到",btnUrl: "urwork://signin")
                }
            }
            VStack
            {
                //月份
                Text("11月 | 星期五")
                    .font(.system(size: 9))
                    .foregroundColor(Color(red: 29/255, green: 29/255, blue: 29/255))
                    .padding(EdgeInsets(top: 0, leading: -150, bottom: 24, trailing: 0))
                    .frame(width: 101, height: 24, alignment: .center)
            }
            VStack
            {
                //商品白色背景图
                ProductWhiteBgView(url: "urwork://pid=12")
                    .padding(.top,94)
            }
            VStack
            {
                Image(uiImage: loadNetworkImage(imgUrlString: "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1138762231,274860356&fm=26&gp=0.jpg")!)
                    .resizable()
                    .frame(width: 35, height: 35, alignment: .center)
                    .cornerRadius(5)
                    .padding(EdgeInsets(top: 95, leading: -159, bottom: 0, trailing: 0))
            }
            VStack
            {
                //商品描述
                Text("丹东99新鲜红颜奶油草莓草莓草莓草莓草莓3…")
                    .font(.system(size: 16))
                    .bold()
                    .foregroundColor(Color(red: 29/255, green: 29/255, blue: 29/255))
                    .padding(EdgeInsets(top: 95, leading: -20, bottom: 0, trailing: 0))
                    .frame(width: 205, height: 24, alignment: .center)
            }
            VStack
            {
                //价格
                Text("¥200")
                    .font(.system(size: 18))
                    .bold()
                    .foregroundColor(Color.red)
                    .padding(EdgeInsets(top: 95, leading: 260, bottom: 0, trailing: 0))
            }
        }
    }
}

//商品背景 白色
struct ProductWhiteBgView:View
{
    var url: String  = "alipayqr://platformapi/startapp?saId=10000007"
    var body: some View
    {
        Link(destination: URL(string: url)!) {
            Image("")
                .resizable()
                .background(Color.white)
                .frame(width: 332, height: 50, alignment: .center)
                .cornerRadius(10)
        }
    }
}

//背景
struct FourBGMediumView:View
{
    var body: some View
    {
        Image("")
            .resizable()
            .background(Color(red: 255/255, green: 198/255, blue: 0/255))
    }
}

//扫一扫
//struct createQRName : View
//{
//    var btnImage :String//按钮图片
//    var btnName :String//按钮下名字
//    var btnUrl :String//跳转链接
//
//    var body: some View
//    {
//        Link(destination: URL(string: btnUrl)!)
//        {
//            VStack
//            {
//                Image(btnImage)
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .foregroundColor(.red)
//                    .frame(width: 22, height: 22, alignment: .center)
//
//                Text(btnName)
//                    .font(.system(size: 12))
//                    .foregroundColor(Color(red: 29/255, green: 29/255, blue: 29/255))
//            }
//            .frame(width: 50, height:60, alignment: .center)
////            .padding(EdgeInsets(top: -55, leading: 10, bottom: 20, trailing: 0))
//        }
//    }
//}
//创建快捷方式按钮
struct createButtonAndName : View
{
    var btnImage :String//按钮图片
    var btnName :String//按钮下名字
    var btnUrl :String//跳转链接
    
    var body: some View
    {
        Link(destination: URL(string: btnUrl)!)
        {
            VStack
            {
                Image(btnImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.red)
                    .frame(width: 22, height: 22, alignment: .center)
                
                Text(btnName)
                    .font(.system(size: 12))
                    .foregroundColor(Color(red: 29/255, green: 29/255, blue: 29/255))
            }
            .frame(width: 50, height:60, alignment: .center)
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 70, trailing: 0))
        }
    }
}
struct FourToolView_Previews: PreviewProvider {
    static var previews: some View {
        FourToolView(strDate: "")
    }
}
