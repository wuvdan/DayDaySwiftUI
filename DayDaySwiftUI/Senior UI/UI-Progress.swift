//
//  DDProgress.swift
//  DayDaySwiftUI
//
//  Created by 吴丹 on 2022/8/23.
//

import SwiftUI

struct DDProgress: View {
    var body: some View {
        List {
            
            Section(header: Text("1. 默认用法").foregroundColor(.red)) {
                ProgressView(value: 10, total: 100)
            }
            
            Section(header: Text("2. 设置标题文案").foregroundColor(.red)) {
                ProgressView("标题", value: 50, total: 100)
            }
            
            Section(header: Text("3. 设置自定义视图").foregroundColor(.red)) {
                ProgressView(value: 10, total: 100) {
                    HStack {
                        Text("上视图01")
                        Spacer()
                        Text("上视图02")
                    }
                } currentValueLabel: {
                    HStack {
                        Text("下视图01")
                        Spacer()
                        Text("下视图02")
                    }
                }
            }
           
            
            Section(header: Text("4. 倒计时").foregroundColor(.red)) {
                
                ProgressView(interval: ClosedRange(uncheckedBounds: (lower: Date(), upper: Date().addingTimeInterval(30))), countdown: true)
                                
                ProgressView(interval: ClosedRange(uncheckedBounds: (lower: Date(), upper: Date().addingTimeInterval(30)))) {
                    HStack {
                        Text("上视图01")
                        Spacer()
                        Text("上视图02")
                    }
                } currentValueLabel: {
                    HStack {
                        Text("下视图01")
                        Spacer()
                        Text("下视图02")
                    }
                }
            }
            
            Section(header: Text("5. Loading").foregroundColor(.red)) {
                ProgressView {
                    Text("自定义视图")
                }
            }
            
            Section(header: Text("6. ProgressViewStyle").foregroundColor(.red)) {
                ProgressView(value: 10, total: 100)
                    .progressViewStyle(.linear)
                    .background(.linearGradient(colors: [.red, .blue], startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 0.8, y: 0.7)))
            }
        }
        .navigationTitle("ProgressView")
    }
}

struct DDProgress_Previews: PreviewProvider {
    static var previews: some View {
        DDProgress()
    }
}
