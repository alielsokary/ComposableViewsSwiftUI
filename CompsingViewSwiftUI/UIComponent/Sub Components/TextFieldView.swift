//
//  TextFieldView.swift
//  CompsingViewSwiftUI
//
//  Created by Ali on 26/12/2021.
//

import SwiftUI

struct TextFieldView: View {
    @State private var name: String = ""
    let placeHolder: String
    let borderColor = ColorStyle.primaryred()
    var body: some View {
        TextField(placeHolder, text: $name)
            .padding()
            .overlay(Border(color: borderColor))
            .fontStyle(TextStyle.bodyLarge)
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(placeHolder: "Select an option")
    }
}
