//
//  DDTextEditor.swift
//  DayDaySwiftUI
//
//  Created by 吴丹 on 2022/8/23.
//

import SwiftUI

struct DDTextEditor: View {
    
    @State private var currentValue = "11"
    
    var body: some View {
        List {
            TextEditor(text: $currentValue)
        }.navigationTitle("TextEditor")
    }
}

struct DDTextEditor_Previews: PreviewProvider {
    static var previews: some View {
        DDTextEditor()
    }
}
