//
//  UI-Image.swift
//  DayDaySwiftUI
//
//  Created by 吴丹 on 2022/8/22.
//

import SwiftUI

struct DDImage: View {
    @State var titleNone = ""
    @State var showAlter = false
    var body: some View {
        List {
            Section(header: Text("基础用法")) {
                HStack {
                    Text("1. SystemName").foregroundColor(.red)
                    Spacer()
                    Image(systemName: "person.crop.circle.badge.plus.fill")
                        .foregroundColor(.green)
                }
                
                HStack {
                    Text("2. Name").foregroundColor(.red)
                    Spacer()
                    Image("icon_image_header")
                }
                
                HStack {
                    Text("3. Frame").foregroundColor(.red)
                    Spacer()
                    Image("icon_image_header")
                        .frame(width: 30, height: 30, alignment: .center)
                }
                
                HStack {
                    Text("4. RenderingMode").foregroundColor(.red)
                    Spacer()
                    Image("icon_image_header")
                        .renderingMode(.template)
                        .foregroundColor(.blue)
                }
                
                HStack {
                    Text("4. CornerRadius").foregroundColor(.red)
                    Spacer()
                    Image("icon_image_header02")
                        .frame(width: 100, height: 100, alignment: .center)
                        .cornerRadius(30)
                }
                
                HStack {
                    Text("5. Resizable").foregroundColor(.red)
                    Spacer()
                    Image("icon_image_header02")
                        .resizable() // 先设置
                        .frame(width: 100, height: 100, alignment: .center)
                        .cornerRadius(30)
                }
            }.navigationTitle("Image")
        }
    }
}

struct DDImage_Previews: PreviewProvider {
    static var previews: some View {
        DDImage()
    }
}
