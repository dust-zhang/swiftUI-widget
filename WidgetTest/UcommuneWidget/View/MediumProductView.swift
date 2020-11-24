//
//  MediumProductView.swift
//  WidgetTest
//
//  Created by zhangjingfei on 20/11/2020.
//

import SwiftUI

struct MediumProductView: View {
    var body: some View
    {
        
        ZStack
        {
            BackgroundMediumView()
            //创建等分左右区
            HStack
            {
                ProductBGMediumView(url: "urwork://pid=11111")
                    .cornerRadius(15)
                    .padding(.top,-30)
                    
                
                ProductBGMediumView(url: "urwork://pid=2222")
                    .cornerRadius(15)
                    .padding(.top,-30)
            }
            HStack
            {
                //第一个商品图片
                ProductMediumView()
                    .padding(EdgeInsets(top: -60, leading: -85, bottom: 0, trailing:5))
                //第一个商品介绍
                Text("丹东99新鲜红颜奶油草莓3斤装（果肉饱满)（果肉饱满)（果肉饱满)（果肉饱满)")
                    .frame(width: 100, height: 33, alignment: .center)
                    .padding(EdgeInsets(top:-60, leading: -50, bottom: 0, trailing:0))
                    .font(.system(size: 12))
                    .foregroundColor(Color(red: 51/255, green: 51/255, blue: 51/255))
                
                //第2个商品图片
                ProductMediumView()
                    .padding(EdgeInsets(top: -60, leading: 25, bottom: 0, trailing:0))
                
                //第2个商品介绍
                Text("丹东99新鲜红颜奶油草莓3斤装（果肉饱满)（果肉饱满)（果肉饱满)（果肉饱满)")
                    .frame(width: 100, height: 33, alignment: .center)
                    .padding(EdgeInsets(top:-60, leading: 0, bottom: 0, trailing:-90))
                    .font(.system(size: 12))
                    .foregroundColor(Color(red: 51/255, green: 51/255, blue: 51/255))
            }
            HStack
            {
                //售价
                Text("¥44")
                    .foregroundColor(Color.red)
                    .fontWeight(.bold)
                    .font(.system(size: 18))
                    .padding(.top,40)
                    .padding(EdgeInsets(top: 0, leading: -160, bottom: 0, trailing:0))
                //原价
                Text("¥222")
                    .strikethrough(true, color:Color(red: 155/255, green: 155/255, blue: 155/255))
                    .foregroundColor(Color(red: 155/255, green: 155/255, blue: 155/255))
                    .font(.system(size: 16))
                    .padding(.top,40)
                    .padding(EdgeInsets(top: 0, leading: -120, bottom: 0, trailing:0))
            }
            HStack
            {
                //售价
                Text("¥55")
                    .foregroundColor(Color.red)
                    .fontWeight(.bold)
                    .font(.system(size: 18))
                    .padding(.top,40)
                    .padding(EdgeInsets(top: 0, leading: 120, bottom: 0, trailing:0))
                //原价
                Text("¥666")
                    .strikethrough(true, color:Color(red: 155/255, green: 155/255, blue: 155/255))
                    .foregroundColor(Color(red: 155/255, green: 155/255, blue: 155/255))
                    .font(.system(size: 16))
                    .padding(.top,40)
            }
            
            Text("更多优鲜集特价商品")
                .font(.system(size: 12))
                .padding(EdgeInsets(top: 120, leading: -165, bottom: 0, trailing:0))
                .foregroundColor(Color(red: 102/255, green: 102/255, blue: 102/255))
            
            Image("ImageWidget")
                .frame(width: 12, height: 12, alignment: .center)
                .padding(EdgeInsets(top: 120, leading: -48, bottom: 0, trailing:0))
            
            Image(uiImage: loadNetworkImage(imgUrlString: "https://m.urwork.cn/appCommon/ShareDefaultThumbnailImage.png")!)
                .resizable()
                .frame(width: 22, height: 22, alignment: .center)
                .cornerRadius(5)
                .aspectRatio(contentMode: .fill)
                .padding(EdgeInsets(top: 120, leading: 318, bottom: 0, trailing:0))
            
           
        }
    }
}

//商品图片、介绍、价格
struct ProductMediumView:View
{
    var body: some View
    {
        Image(uiImage: loadNetworkImage(imgUrlString: "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1138762231,274860356&fm=26&gp=0.jpg")!)
            .resizable()
            .frame(width: 40, height: 40, alignment: .center)
            .cornerRadius(5)
            .aspectRatio(contentMode: .fill)
            
    }
}

//商品背景
struct ProductBGMediumView:View
{
    var url: String  = "alipayqr://platformapi/startapp?saId=10000007"
    var body: some View
    {
        Link(destination: URL(string: url)!)
        {
            Image("")
                .resizable()
                .frame(width: 168, height: 117, alignment: .center)
                .background(Color.white)
        }
    }
}

//灰色背景
struct BackgroundMediumView:View
{
    var body: some View
    {
        Image("")
            .resizable()
            .background(Color(.init(red: 242/255, green: 242/255, blue: 247/255, alpha: 1)))
    }
}



struct MediumProductView_Previews: PreviewProvider {
    static var previews: some View {
        MediumProductView()
    }
}
