//
//  UI-ZStack.swift
//  DayDaySwiftUI
//
//  Created by 吴丹 on 2022/8/22.
//

import SwiftUI

struct DDZStack: View {
    var body: some View {
        List {
            Section(header: Text("1. 基础用法").foregroundColor(.red)) {
                VStack(alignment: .leading){
                    Text("1. Default-Init").foregroundColor(.red)
                    Spacer()
                    ZStack{
                        Image("icon_image_header02")
                            .resizable() // 先设置
                            .frame(width: 100, height: 100, alignment: .center)
                        Text("文案").foregroundColor(.white).font(.system(size: 40))
                    }
                }
                
                VStack(alignment: .leading){
                    Text("2. Alignment-TopTrailing").foregroundColor(.red)
                    Spacer()
                    Spacer()
                    ZStack(alignment: .topTrailing){
                        Image("icon_image_header02")
                            .resizable() // 先设置
                            .frame(width: 100, height: 100, alignment: .center)
                        Text("文案").foregroundColor(.white).font(.system(size: 20))
                    }
                }
                
                VStack(alignment: .leading){
                    Text("3. Alignment-TopLeading").foregroundColor(.red)
                    Spacer()
                    Spacer()
                    ZStack(alignment: .topLeading){
                        Image("icon_image_header02")
                            .resizable() // 先设置
                            .frame(width: 100, height: 100, alignment: .center)
                        Text("文案").foregroundColor(.white).font(.system(size: 20))
                    }
                }
                
                VStack(alignment: .leading){
                    Text("4. Alignment-BottomLeading").foregroundColor(.red)
                    Spacer()
                    Spacer()
                    ZStack(alignment: .bottomLeading){
                        Image("icon_image_header02")
                            .resizable() // 先设置
                            .frame(width: 100, height: 100, alignment: .center)
                        Text("文案").foregroundColor(.white).font(.system(size: 20))
                    }
                }
                
                VStack(alignment: .leading){
                    Text("5. Alignment-BottomTrailing").foregroundColor(.red)
                    Spacer()
                    Spacer()
                    ZStack(alignment: .bottomTrailing){
                        Image("icon_image_header02")
                            .resizable() // 先设置
                            .frame(width: 100, height: 100, alignment: .center)
                        Text("文案").foregroundColor(.white).font(.system(size: 20))
                    }
                }
                
                HStack(alignment: .center){
                    Text("6. Alignment- ....").foregroundColor(.red)
                    Spacer()
                    Text("其他方向...")
                }
            }
        }.navigationTitle("ZStack")
    }
}

struct DDZStack_Previews: PreviewProvider {
    static var previews: some View {
        DDZStack()
    }
}

