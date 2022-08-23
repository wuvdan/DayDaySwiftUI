//
//  DDToggle.swift
//  DayDaySwiftUI
//
//  Created by 吴丹 on 2022/8/22.
//

import SwiftUI

struct DDToggle: View {
    @State var isOn = false
    var body: some View {
        List {
            Section(header: Text("")) {
                Toggle("这是标题", isOn: $isOn)
                Toggle(isOn: $isOn) {
                    Text("Toggle状态：" + "\(isOn ? "打开" : "关闭")")
                }
            }
        }.navigationTitle("Toggle")
    }
}

struct DDToggle_Previews: PreviewProvider {
    static var previews: some View {
        DDToggle()
    }
}
