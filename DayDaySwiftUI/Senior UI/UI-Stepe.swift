//
//  DDStepe.swift
//  DayDaySwiftUI
//
//  Created by 吴丹 on 2022/8/22.
//

import SwiftUI

struct DDStepe: View {
    @State var value = 10
    @State var value2 = 10.0
    var body: some View {
        List {
            Section {
                Text("value1---->\(value)").foregroundColor(.red).font(.system(size: 30))
                Text("value2---->\(value2)").foregroundColor(.red).font(.system(size: 30))
                
                Stepper("这是标题01", value: $value)
                Stepper("这是标题02", value: $value, step: 1)
                Stepper {
                    Text("这是标题03")
                } onIncrement: {
                    print("1")
                } onDecrement: {
                    print("2")
                } onEditingChanged: { finished in
                    print(finished)
                }

                Stepper("这是标题04", value: $value2, step: 10.0, format: .number).onChange(of: value2) { newValue in
                    print(newValue)
                }
            }
        }.navigationTitle("Stepper")
    }
}

struct DDStepe_Previews: PreviewProvider {
    static var previews: some View {
        DDStepe()
    }
}
