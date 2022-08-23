//
//  DDHStack.swift
//  DayDaySwiftUI
//
//  Created by 吴丹 on 2022/8/22.
//

import SwiftUI

struct DDHStack: View {
    var body: some View {
        List {
            Section(header: Text("基础用法")) {
                VStack(alignment: .leading){
                    Text("1. Default-Init").foregroundColor(.red)
                    Spacer()
                    HStack {
                        Text("左视图")
                        Text("中间视图")
                        Text("右视图")
                    }
                }
                
                VStack(alignment: .leading){
                    Text("2. Spacer").foregroundColor(.red)
                    Spacer()
                    HStack {
                        Text("左视图")
                        Spacer().frame(height: 50)
                        Text("右视图")
                    }
                }
                
                VStack(alignment: .leading){
                    Text("3. Alignment-Top").foregroundColor(.red)
                    Spacer()
                    HStack {
                        HStack(alignment: .top) {
                            Text("左视图11111")
                            VStack{
                                Text("右视图01")
                                Text("右视图02")
                            }
                        }
                    }
                }
                
                VStack(alignment: .leading){
                    Text("4. Alignment-Bottom").foregroundColor(.red)
                    Spacer()
                    HStack {
                        HStack(alignment: .bottom) {
                            Text("左视图11111")
                            VStack{
                                Text("右视图01")
                                Text("右视图02")
                            }
                        }
                    }
                }
                
                VStack(alignment: .leading){
                    Text("5. Alignment-Center").foregroundColor(.red)
                    Spacer()
                    VStack {
                        HStack(alignment: .center) {
                            Text("左视图11111")
                            VStack{
                                Text("右视图01")
                                Text("右视图02")
                            }
                        }
                    }
                }
                
                VStack(alignment: .leading){
                    Text("6. Alignment-FirstTextBaseline").foregroundColor(.red)
                    Spacer()
                    VStack {
                        HStack(alignment: .firstTextBaseline) {
                            Text("左视图11111")
                            VStack{
                                Text("右视图01")
                                Text("右视图02")
                            }
                        }
                    }
                }
                
                VStack(alignment: .leading){
                    Text("7. Alignment-LastTextBaseline").foregroundColor(.red)
                    Spacer()
                    VStack {
                        HStack(alignment: .lastTextBaseline) {
                            Text("左视图11111")
                            VStack{
                                Text("右视图01")
                                Text("右视图02")
                            }
                        }
                    }
                }
                
                VStack(alignment: .leading){
                    Text("8. Alignment-Spacing").foregroundColor(.red)
                    Spacer()
                    VStack {
                        HStack(alignment: .center, spacing: 100) {
                            Text("左视图11111")
                            VStack{
                                Text("右视图01")
                                Text("右视图02")
                            }
                        }
                    }
                }
            }
        }.navigationTitle("HStack")
    }
}

struct DDHStack_Previews: PreviewProvider {
    static var previews: some View {
        DDHStack()
    }
}
