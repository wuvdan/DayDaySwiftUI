//
//  DDList.swift
//  DayDaySwiftUI
//
//  Created by 吴丹 on 2022/8/22.
//

import SwiftUI

struct DDListModel: Hashable, Identifiable {
    var id: String
    var name: String
    
    static func == (lhs: DDListModel, rhs: DDListModel) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

struct DDList: View {
    
    @State private var name = ""
    
    @State private var models = [
        DDListModel(id: "0001", name: "张三"),
        DDListModel(id: "0002", name: "张四"),
        DDListModel(id: "0003", name: "张四001"),
        DDListModel(id: "0004", name: "张四002")
    ]
    
    var body: some View {
        Section(header: Text("1. 支持添加所有视图").foregroundColor(.red)) {
            List {
                Text("文本")
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
        }
        
        Section(header: Text("2. 从模型数组中加载").foregroundColor(.red)) {
            List(models) { item in
                HStack {
                    Text(item.id)
                    Spacer()
                    Text(item.name)
                }
            }
        }
        
        Section(header: Text("3. 从For中加载").foregroundColor(.red)) {
            List(0..<10) { item in
                Text("------>" + "\(item)")
            }
        }
        
        Section(header: Text("4. ListStyle").foregroundColor(.red)) {
            List(0..<10) { item in
                Text("------>" + "\(item)")
            }
            .listStyle(.sidebar)
        }
    }
}

struct DDList_Previews: PreviewProvider {
    static var previews: some View {
        DDList()
    }
}
