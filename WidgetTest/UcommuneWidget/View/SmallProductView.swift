//
//  SmallProductView.swift
//  WidgetTest
//
//  Created by zhangjingfei on 20/11/2020.
//

import SwiftUI

struct SmallProductView: View
{
    var body: some View {
        VStack
        {
            //推荐商品图片
            ProductView().padding(.top, -25)
                .aspectRatio(contentMode: .fit)
            VStack
            {
                Text("丹东99新鲜红颜奶油草莓3斤装（果肉饱满)（果肉饱满)（果肉饱满)（果肉饱满)")
                    .frame(width: 140, height: 33, alignment: .center)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing:10))
                    .font(.system(size: 13))
                    
                VStack
                {
                    HStack
                    {
                        Text("¥333")
                            .foregroundColor(Color.red)
                            .fontWeight(.bold)
                            .font(.system(size: 18))
                            .padding(.top,20)
                            .padding(EdgeInsets(top: 0, leading: -50, bottom: 0, trailing:0))
                        
                        Text("¥222")
                            .strikethrough(true, color:Color(red: 155/255, green: 155/255, blue: 155/255))
                            .foregroundColor(Color(red: 155/255, green: 155/255, blue: 155/255))
                            .font(.system(size: 15))
                            .padding(.top,20)
                    }
                }
            }
            .frame(width: .infinity, height: 60, alignment: .topTrailing)
        }
        .widgetURL(URL(string: "urwork://homepage"))//打开首页
    }
}

struct ProductView:View
{
    var body: some View
    {
        VStack
        {
            HStack
            {
                Image(uiImage: loadNetworkImage(imgUrlString: "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1138762231,274860356&fm=26&gp=0.jpg")!)
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .cornerRadius(10)
                    
                
                //占位
                Text("")
                    .frame(width: 90, height: .infinity, alignment: .topLeading)
            }
        }
    }
}

//加载网络图片
func loadNetworkImage(imgUrlString:String) ->UIImage?
{
    var image: UIImage? = nil
    if let iamgeData = try? Data(contentsOf: URL(string: imgUrlString)!)
    {
        image = UIImage(data: iamgeData)
    }
    return image;
}


struct SmallProductView_Previews: PreviewProvider {
    static var previews: some View {
        SmallProductView()
    }
}
