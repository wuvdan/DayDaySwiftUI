//
//  DDMenu.swift
//  DayDaySwiftUI
//
//  Created by 吴丹 on 2022/8/23.
//

import SwiftUI

struct DDMenu: View {
    var body: some View {
        List {
            Section {
                Menu("当前值") {
                    Text("文本")
                    Button {
                        
                    } label: {
                        Text("按钮")
                    }

                    Image("icon_image_header").frame(width: 100, height: 100).padding(30)
                }
                
                
                Menu {
                    Text("文本")
                    Button {
                        
                    } label: {
                        Text("按钮")
                    }

                    Image("icon_image_header").frame(width: 100, height: 100).padding(30)
                } label: {
                    Image("icon_image_header").frame(width: 100, height: 100).padding(30)
                }

            }
        }.navigationTitle("Menu")
    }
}

struct DDMenu_Previews: PreviewProvider {
    static var previews: some View {
        DDMenu()
    }
}
