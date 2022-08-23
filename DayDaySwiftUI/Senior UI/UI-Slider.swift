//
//  DDSlider.swift
//  DayDaySwiftUI
//
//  Created by 吴丹 on 2022/8/22.
//

import SwiftUI

struct DDSlider: View {
    @State var currentValue = 0.5
    @State var currentValue2 = 90.0
    
    var body: some View {
        List {
            Section(header: Text("1. Default Init").foregroundColor(.red)) {
                Slider(value: $currentValue)
            }
            
            Section(header: Text("2. ClosedRange").foregroundColor(.red)) {
                Slider(value: $currentValue2, in: ClosedRange(uncheckedBounds:(lower: 0, upper: 100)))
            }
            
            Section(header: Text("3. IsChange").foregroundColor(.red)) {
                Slider(value: $currentValue2, in: ClosedRange(uncheckedBounds:(lower: 0, upper: 100))) { isChange in
                    print(isChange)
                }
            }
            
            Section(header: Text("4. Step").foregroundColor(.red)) {
                Slider(value: $currentValue2, in: ClosedRange(uncheckedBounds:(lower: 0, upper: 100)), step: 10) { isChange in
                    print(isChange)
                }
            }
            
            Section(header: Text("4. Label").foregroundColor(.red)) {
                Slider(value: $currentValue) {
                    Text("1")
                }
            }
            
            Section(header: Text("4. Max-Mini").foregroundColor(.red)) {
                Slider(value: $currentValue) {
                    Text("1")
                } minimumValueLabel: {
                    Text("最小")
                } maximumValueLabel: {
                    Text("最大")
                }
            }
            
            Section(header: Text("5. Style").foregroundColor(.red)) {
                Slider(value: $currentValue) {
                    Text("1111")
                } minimumValueLabel: {
                    Text("最小")
                } maximumValueLabel: {
                    Text("最大")
                }
                .foregroundColor(.green)
            }
        }.navigationBarTitle("Slider")
    }
}

struct DDSlider_Previews: PreviewProvider {
    static var previews: some View {
        DDSlider()
    }
}
