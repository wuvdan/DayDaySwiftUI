//
//  ContentView.swift
//  DayDaySwiftUI
//
//  Created by 吴丹 on 2022/8/22.
//

import SwiftUI

struct HomeMenuData: Hashable {
    static func == (lhs: HomeMenuData, rhs: HomeMenuData) -> Bool {
        return lhs.categoryName == rhs.categoryName
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(categoryName)
    }
    
    var categoryName: String
    var categoryList: Array<HomeMentItem>
    
    struct HomeMentItem: Hashable {
        var id: Int
        var name: String
    }
    
    static let homeMenuList = [
        HomeMenuData(categoryName: "基础UI控件", categoryList: [
            HomeMentItem(id: 1000, name: "Text"),
            HomeMentItem(id: 1001, name: "Button"),
            HomeMentItem(id: 1002, name: "Image"),
            HomeMentItem(id: 1003, name: "TextField"),
            HomeMentItem(id: 1004, name: "TextEditor"),
            HomeMentItem(id: 1005, name: "Label")
        ]),
        
        HomeMenuData(categoryName: "布局UI控件", categoryList: [
            HomeMentItem(id: 2000, name: "VStack"),
            HomeMentItem(id: 2001, name: "HStack"),
            HomeMentItem(id: 2002, name: "ZStack"),
        ]),
        
        HomeMenuData(categoryName: "列表UI控件", categoryList: [
            HomeMentItem(id: 3000, name: "List"),
            HomeMentItem(id: 3001, name: "ScrollView"),
            HomeMentItem(id: 3002, name: "ForEach"),
            HomeMentItem(id: 3003, name: "Menu")
        ]),
        
        HomeMenuData(categoryName: "高级UI控件", categoryList: [
            HomeMentItem(id: 4000, name: "Slider"),
            HomeMentItem(id: 4001, name: "Toggle"),
            HomeMentItem(id: 4002, name: "Stepe"),
            HomeMentItem(id: 4003, name: "Progress"),
            HomeMentItem(id: 4004, name: "Picker"),
            HomeMentItem(id: 4005, name: "ColorPicker")
        ]),
        
        HomeMenuData(categoryName: "交互UI控件", categoryList: [
            HomeMentItem(id: 5000, name: "ActionSheet"),
            HomeMentItem(id: 5001, name: "Alter"),
            HomeMentItem(id: 5002, name: "Popover")
        ]),
    ]
}

struct ContentView: View {
    
    @State var title = "每日 SwiftUI"
    @State var titleNone = ""
    let homeMenuList = HomeMenuData.homeMenuList
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView {
            List {
                
            
        
                ForEach(homeMenuList, id: \.categoryName) { child in
                    Section(header: Text(child.categoryName), footer: Text("")) {
                        ForEach(child.categoryList, id: \.name) { item in
                            NavigationLink(item.name) {
                                switch item.id {
                                case 1000: DDText()
                                case 1001: DDButton()
                                case 1002: DDImage()
                                case 1003: DTextField()
                                case 1004: DDTextEditor()
                                case 1005: DDLabel()
                                    
                                case 2000: DDVStack()
                                case 2001: DDHStack()
                                case 2002: DDZStack()
                                    
                                case 3000: DDList().navigationBarTitle("List")
                                case 3001: DDScrollView().navigationBarTitle("ScrollView")
                                case 3002: DDForEach().navigationBarTitle("ForEach")
                                case 3003: DDMenu()
                                    
                                case 4000: DDSlider()
                                case 4001: DDToggle()
                                case 4002: DDStepe()
                                case 4003: DDProgress()
                                case 4004: DDPicker()
                                case 4005: DDColorPicker()
                                    
                                case 5000: DDActionSheet()
                                case 5001: DDAlert()
                                case 5002: DDPopover()
                                    
                                default:
                                    DDText()
                                }
                            }
                        }
                    }
                }
            }.navigationTitle(title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
