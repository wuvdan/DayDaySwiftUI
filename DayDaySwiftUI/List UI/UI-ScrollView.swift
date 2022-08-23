//
//  DDScrollVieqw.swift
//  DayDaySwiftUI
//
//  Created by 吴丹 on 2022/8/22.
//

import SwiftUI

struct DDScrollView: View {
    @State private var name = ""

    var body: some View {
        Section(header: Text("1. 可以添加任意控件").foregroundColor(.red)) {
            ScrollView(showsIndicators: false){
                ForEach(0..<5) { item in
                    Text("11111")
                }
                Button {
                    
                } label: {
                    Text("按钮")
                }

                Image("icon_image_header02")
                    .resizable() // 先设置
                    .frame(width: 100, height: 100, alignment: .center)
                    .cornerRadius(30)
                
                TextField("请输入账号", text: $name)
            }
            .frame(width: 300, height: 100)
            .scrollDismissesKeyboard(.immediately)
        }
        
        Section(header: Text("2. 滚动方向-vertical").foregroundColor(.red)) {
            ScrollView(.vertical) {
                ForEach(0..<50) { item in
                    Text("11111")
                }
            }
            .frame(width: 300, height: 100)
            .scrollDismissesKeyboard(.immediately)
        }
        
        Section(header: Text("2. 滚动方向-horizontal").foregroundColor(.red)) {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(0..<50) { item in
                        Text("11111")
                    }
                }
            }
            .scrollDismissesKeyboard(.immediately)
        }
    }
}

struct DDScrollView_Previews: PreviewProvider {
    static var previews: some View {
        DDScrollView()
    }
}
