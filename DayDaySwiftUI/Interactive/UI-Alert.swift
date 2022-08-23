//
//  DDAlert.swift
//  DayDaySwiftUI
//
//  Created by 吴丹 on 2022/8/23.
//

import SwiftUI

struct DDAlert: View {
    @State private var showActionSheet = false
    
    var body: some View {
        List {
            Section {
                Button {
                    showActionSheet = true
                } label: {
                    Text("点击这显示Alter")
                }
            }.alert("标题", isPresented: $showActionSheet, presenting: "") { v in
                Button("事件1") {
                    
                }
                Button("事件2") {
                    
                }
            } message: { v in
                Text("这是message内容-设置颜色，字体无效，只能显示文案").foregroundColor(.red).font(.system(size: 30))
            }
        }.navigationTitle("ActionSheet")
    }
}

struct DDAlert_Previews: PreviewProvider {
    static var previews: some View {
        DDAlert()
    }
}
