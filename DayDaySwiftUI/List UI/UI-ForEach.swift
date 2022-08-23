//
//  DDForEach.swift
//  DayDaySwiftUI
//
//  Created by 吴丹 on 2022/8/22.
//

import SwiftUI

struct DDForEach: View {
    var body: some View {
        ScrollView {
            ForEach(0..<100) { index in
                Text("Hello, World!---->\(index)")
            }
        }
    }
}

struct DDForEach_Previews: PreviewProvider {
    static var previews: some View {
        DDForEach()
    }
}
