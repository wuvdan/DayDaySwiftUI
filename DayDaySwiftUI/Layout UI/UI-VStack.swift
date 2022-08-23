//
//  UI-VStack.swift
//  DayDaySwiftUI
//
//  Created by 吴丹 on 2022/8/22.
//

import SwiftUI

struct DDVStack: View {
    var body: some View {
        List {
            Section(header: Text("基础用法")) {
                HStack{
                    Text("1. Default-Init").foregroundColor(.red)
                    Spacer()
                    VStack {
                        Text("上视图")
                        Text("中间视图")
                        Text("下视图")
                    }
                }
                
                HStack{
                    Text("2. Spacer").foregroundColor(.red)
                    Spacer()
                    VStack {
                        Text("上视图")
                        Spacer().frame(height: 50)
                        Text("下视图")
                    }
                }
                
                HStack{
                    Text("3. Alignment-Leading").foregroundColor(.red)
                    Spacer()
                    VStack {
                        VStack(alignment: .leading) {
                            Text("上视图11111")
                            Text("下视图0")
                        }
                    }
                }
                
                HStack{
                    Text("4. Alignment-Trailing").foregroundColor(.red)
                    Spacer()
                    VStack {
                        VStack(alignment: .trailing) {
                            Text("上视图11111")
                            Text("下视图0")
                        }
                    }
                }
                
                HStack{
                    Text("5. Alignment-Center").foregroundColor(.red)
                    Spacer()
                    VStack {
                        VStack(alignment: .center) {
                            Text("上视图11111")
                            Text("下视图0")
                        }
                    }
                }
                
                HStack{
                    Text("6. Alignment-ListRowSeparatorLeading").foregroundColor(.red)
                    Spacer()
                    VStack {
                        VStack(alignment: .listRowSeparatorLeading) {
                            Text("上视图11111")
                            Text("下视图0")
                        }
                    }
                }
                
                HStack{
                    Text("7. Alignment-ListRowSeparatorTrailing").foregroundColor(.red)
                    Spacer()
                    VStack {
                        VStack(alignment: .listRowSeparatorTrailing) {
                            Text("上视图11111")
                            Text("下视图0")
                        }
                    }
                }
                
                HStack{
                    Text("8. Alignment-Spacing").foregroundColor(.red)
                    Spacer()
                    VStack {
                        VStack(spacing: 50) {
                            Text("上视图11111")
                            Text("下视图0")
                        }
                    }
                }
            }
        }.navigationTitle("VStack")
    }
}

struct DDVStack_Previews: PreviewProvider {
    static var previews: some View {
        DDVStack()
    }
}
