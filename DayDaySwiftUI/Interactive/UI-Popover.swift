//
//  DDPopover.swift
//  DayDaySwiftUI
//
//  Created by 吴丹 on 2022/8/23.
//

import SwiftUI

struct DDPopover: View {
    @State private var showActionSheet = false

    var body: some View {
        List {
            Section {
                Button {
                    showActionSheet = true
                } label: {
                    Text("点击这显示Popover")
                }
                // 在iOS中忽略 attachmentAnchor与arrowEdge 设置无效
            }.popover(isPresented: $showActionSheet, attachmentAnchor: .point(UnitPoint(x: 500, y: 100)), arrowEdge: .trailing) {
                Text("这是弹出的子视图")
                Button("按钮") {
                    
                }
            }
        }.navigationTitle("ActionSheet")
    }
}

struct DDPopover_Previews: PreviewProvider {
    static var previews: some View {
        DDPopover()
    }
}
