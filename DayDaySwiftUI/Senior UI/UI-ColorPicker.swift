//
//  DDColorPicker.swift
//  DayDaySwiftUI
//
//  Created by 吴丹 on 2022/8/23.
//

import SwiftUI

struct DDColorPicker: View {
    
    @State private var color: CGColor = CGColor(red: 255, green: 0, blue: 0, alpha: 1)
    
    var body: some View {
        List {
            Section {
                Image("icon_image_header").renderingMode(.template)
                    .frame(width: 100, height: 100).padding(30).foregroundColor(Color(color))
                ColorPicker("标题", selection: $color)
            }
        }.navigationTitle("ColorPicker")
    }
}

struct DDColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        DDColorPicker()
    }
}
