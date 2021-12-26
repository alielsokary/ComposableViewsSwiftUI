//
//  InputView.swift
//  CompsingViewSwiftUI
//
//  Created by Ali on 26/12/2021.
//

import SwiftUI

struct InputView: View {
    var body: some View {
        let text = "Option"
        let textFieldPlaceholder = "Select an option"
        let helperText = "Hey there, my name is helper text. I’m here to help you."
        VStack(alignment: .leading, spacing: 8) {
            TextView(text: text)
            TextFieldView(placeHolder: textFieldPlaceholder)
            TextViewHelper(text: helperText)
        }
        .padding([.leading, .trailing], 8)
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView()
    }
}
