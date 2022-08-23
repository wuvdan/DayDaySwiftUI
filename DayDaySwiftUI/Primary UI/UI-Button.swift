//
//  UI-Button.swift
//  DayDaySwiftUI
//
//  Created by 吴丹 on 2022/8/22.
//

import SwiftUI

struct DDButton: View {
    @State var titleNone = ""
    @State var showAlter = false
    var body: some View {
        List {
            Section(header: Text("基础用法")) {
                HStack {
                    Text("1. TapAction").foregroundColor(.red)
                    Spacer()
                    Button("这是一个按钮") {
                        showAlter = true
                    }
                }
                
                HStack {
                    Text("2. Text-Style").foregroundColor(.red)
                    Spacer()
                    Button {
                        showAlter = true
                    } label: {
                        HStack {
                            Text("按钮样式").font(.system(size: 10))
                            Text("按钮样式").font(.system(size: 20)).foregroundColor(.red)
                            Image(systemName: "highlighter").foregroundColor(.black)
                        }
                    }
                }
                
                HStack {
                    Text("3. Disabled").foregroundColor(.red)
                    Spacer()
                    Button {
                        showAlter = true
                    } label: {
                        Text("按钮样式").font(.system(size: 20))
                    }.disabled(true)
                }
            }
        }.alert(isPresented: $showAlter, content: {
            Alert(title: Text("温馨提示"),
                  message: Text("点击了难"))
        }).navigationTitle("Button")
    }
}

struct DDButton_Previews: PreviewProvider {
    static var previews: some View {
        DDButton()
    }
}
