//
//  UI-TextField.swift
//  DayDaySwiftUI
//
//  Created by 吴丹 on 2022/8/22.
//

import SwiftUI

struct DTextField: View {
    @State private var titleNone = ""
    @State private var showAlter = false
    @State private var currentTextValue: String = ""
    @State private var currentTextValue2: String = ""
    @State private var currentTextValue3 = 100
    @State private var currentTextValue4: Date.FormatStyle.FormatInput = Date()
    @State private var currentTextValue5: Decimal.FormatStyle.FormatInput = 9999

    var body: some View {
        List {
            Section(header: Text("基础用法")) {
                HStack {
                    Text("1. Placeholder").foregroundColor(.red)
                    Spacer()
                    TextField("placeholder", text: $currentTextValue)
                }
                
                HStack {
                    Text("2. KeyboardType").foregroundColor(.red)
                    Spacer()
                    TextField("placeholder", text: $currentTextValue).keyboardType(.decimalPad)
                }
                
                HStack {
                    Text("3. TextContentType").foregroundColor(.red)
                    Spacer()
                    TextField("placeholder", text: $currentTextValue).textContentType(.nickname)
                }
                
                HStack {
                    Text("4. TextFieldStyle").foregroundColor(.red)
                    Spacer()
                    TextField("placeholder", text: $currentTextValue).textFieldStyle(.roundedBorder)
                }
                
                HStack {
                    Text("4. FontStyle").foregroundColor(.red)
                    Spacer()
                    TextField("placeholder", text: $currentTextValue)
                        .foregroundColor(.red)
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                }
                
                HStack {
                    Text("5. OnChange").foregroundColor(.red)
                    Spacer()
                    TextField("placeholder", text: $currentTextValue) { over in
                        print(_currentTextValue)
                    }
                }
                
                HStack {
                    Text("6. OnCommit").foregroundColor(.red)
                    Spacer()
                    TextField("placeholder", text: $currentTextValue) {
                        print(_currentTextValue)
                    }
                }
                
                HStack {
                    Text("7. SecureField").foregroundColor(.red)
                    Spacer()
                    SecureField("请输入密码", text: $currentTextValue)
                }
                
                HStack {
                    Text("8. Toolbar").foregroundColor(.red)
                    Spacer()
                    TextField("placeholder", text: $currentTextValue) {
                        print(_currentTextValue)
                    }
                    .toolbar {
                        ToolbarItem(placement: .keyboard) {
                                                HStack {
                                                    Button("取消") {
                                                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                                    }
                                                    .buttonStyle(.bordered)
                                                    Spacer()
                                                    Button("确定") {
                                                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                                        // do something
                                                    }
                                                    .buttonStyle(.bordered)
                                                }
                                                .padding(.horizontal, 30)
                                            }
                    }
                }
                
                HStack {
                    Text("9. SubmitLabel").foregroundColor(.red)
                    Spacer()
                    TextField("placeholder", text: $currentTextValue)
                        .textFieldStyle(.roundedBorder)
                        .submitLabel(.next)
                        .onSubmit {
                            print("结束编辑")
                        }
                }
            
            }
            Section(header: Text("高级用法")) {
                HStack {
                    Text("1. Axis").foregroundColor(.red)
                    Spacer()
                    // .vertical ==== UITextView
                    // .horizontal ==== UITextField
                    TextField("占位符", text: $currentTextValue2, axis: .vertical)
                }
                
                HStack {
                    Text("2. Prompt").foregroundColor(.red)
                    Spacer()
                    TextField("占位符", text: $currentTextValue2, prompt: Text("占位符2"))
                }
                
                HStack {
                    Text("3. Format-Number").foregroundColor(.red)
                    Spacer()
                    // .number  100,000
                    TextField("请输入金额", value: $currentTextValue3, format: .number)
                }
                
                HStack {
                    Text("4. Format-DateTime").foregroundColor(.red)
                    Spacer()
                    // 8/22/2022, 12:24 PM
                    TextField("请输入时间", value: $currentTextValue4, format: .dateTime)
                }
                
                HStack {
                    Text("5. Format-Currency").foregroundColor(.red)
                    Spacer()
                    // $999,99.00
                    TextField("请输入金额", value: $currentTextValue5, format: .currency(code: "USD"))
                }
                
                HStack {
                    Text("6. Format-Percent").foregroundColor(.red)
                    Spacer()
                    // $999,9900%
                    TextField("请输入金额", value: $currentTextValue5, format: .percent)
                }
            }
        }.scrollDismissesKeyboard(ScrollDismissesKeyboardMode.immediately).navigationTitle("TextField")
    }
}

struct DTextField_Previews: PreviewProvider {
    static var previews: some View {
        DTextField()
    }
}
