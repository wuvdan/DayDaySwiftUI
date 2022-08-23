//
//  UI-Text.swift
//  DayDaySwiftUI
//
//  Created by 吴丹 on 2022/8/22.
//

import SwiftUI

struct DDText: View {
    var body: some View {
        List {
            Section(header: Text("基础用法-设置基本属性")) {
                HStack {
                    Text("1. Font").foregroundColor(.red)
                    Spacer()
                    Text("实例文本ABCabc123").font(.system(size: 30))
                }
                
                HStack {
                    Text("2. ForegroundColor").foregroundColor(.red)
                    Spacer()
                    Text("实例文本ABCabc123").foregroundColor(.indigo)
                }
                
                HStack {
                    Text("3. FontWeight").foregroundColor(.red)
                    Spacer()
                    Text("实例文本ABCabc123").fontWeight(.semibold)
                }
                
                HStack {
                    Text("4. Italic").foregroundColor(.red)
                    Spacer()
                    Text("实例文本ABCabc123").italic()
                }
            }
            
            Section(header: Text("基础用法-设置高级属性")) {
                HStack {
                    Text("1. Strikethrough").foregroundColor(.red)
                    Spacer()
                    Text("实例文本").strikethrough()
                }
                
                HStack {
                    Text("2. Strikethrough-Color").foregroundColor(.red)
                    Spacer()
                    Text("实例文本").strikethrough(true, color:.red)
                }

                HStack {
                    Text("3. LineLimit").foregroundColor(.red)
                    Spacer()
                    Text("实例文本ABCabc123实例文本实例文本实例文本实例文本实例文本实例文本实例文本实例文本实例文本实例文本实例文本实例文本实例文本实例文本实例文本实例文本实例文本").lineLimit(2)
                }
            }
        }.navigationTitle("Text")
    }
}

struct DDText_Previews: PreviewProvider {
    static var previews: some View {
        DDText()
    }
}
