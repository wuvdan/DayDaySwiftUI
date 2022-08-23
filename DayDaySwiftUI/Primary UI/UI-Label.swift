//
//  DDLabel.swift
//  DayDaySwiftUI
//
//  Created by 吴丹 on 2022/8/23.
//

import SwiftUI

struct DDLabel: View {
    var body: some View {
        List {
            Section {
                Label("文案", image: "icon_image_header")
                
                Label {
                    Text("文案01")
                    Text("文案02")
                } icon: {
                    Image(systemName: "person.2.circle")
                }

                Label("文案", systemImage: "person.2.circle")
            }
            
            Section {
                LabeledContent("标题", value: "内容")
                LabeledContent("标题") {
                    Text("11")
                    Image(systemName: "person.2.circle")
                }
                
                LabeledContent {
                    Text("标题")
                    Image(systemName: "person.2.circle")
                } label: {
                    Text("内容")
                    Image(systemName: "person.2.circle")
                }
            }
            
            Section {
                Link("点击打开链接01",
                      destination: URL(string: "https://www.baidu.com")!)
                
                Link("点击打开链接02", destination: URL(string: "https://www.baidu.com")!)
                    .environment(\.openURL, OpenURLAction { url in
                        print("Open \(url)")
                        return .handled
                    })
            }
            
        }.navigationTitle("Label")
    }
}

struct DDLabel_Previews: PreviewProvider {
    static var previews: some View {
        DDLabel()
    }
}
