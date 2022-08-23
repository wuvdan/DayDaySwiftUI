//
//  DDSegmentedControl.swift
//  DayDaySwiftUI
//
//  Created by 吴丹 on 2022/8/22.
//

import SwiftUI

struct DDSegmentedControl: View {
    @State var currentIndex = 0
    var body: some View {
        DisclosureGroup(/*@START_MENU_TOKEN@*/"Group"/*@END_MENU_TOKEN@*/) {
            Text("1")
            Text("2")
        }
        
//        Link("", destination: UR)
        ColorPicker(/*@START_MENU_TOKEN@*/"Title"/*@END_MENU_TOKEN@*/, selection: /*@START_MENU_TOKEN@*/.constant(.red)/*@END_MENU_TOKEN@*/)
        ProgressView(value: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
    }
}

struct DDSegmentedControl_Previews: PreviewProvider {
    static var previews: some View {
        DDSegmentedControl()
    }
}
