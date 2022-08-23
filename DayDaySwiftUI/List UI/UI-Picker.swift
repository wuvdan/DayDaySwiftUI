//
//  DDPicker.swift
//  DayDaySwiftUI
//
//  Created by 吴丹 on 2022/8/23.
//

import SwiftUI

struct DDPicker: View {
    
    @State private var bindValue = 2
    
    var body: some View {
        List {
            Section {
                Picker(selection: $bindValue, label: Text("标题")) {
                    /*@START_MENU_TOKEN@*/Text("1").tag(1)/*@END_MENU_TOKEN@*/
                    /*@START_MENU_TOKEN@*/Text("2").tag(2)/*@END_MENU_TOKEN@*/
                }
            }
            
            Section {
                Picker("标题", selection: $bindValue) {
                    /*@START_MENU_TOKEN@*/Text("1").tag(1)/*@END_MENU_TOKEN@*/
                    /*@START_MENU_TOKEN@*/Text("2").tag(2)/*@END_MENU_TOKEN@*/
                }
            }
        }.navigationTitle("Picker")
    }
}

struct DDPicker_Previews: PreviewProvider {
    static var previews: some View {
        DDPicker()
    }
}
