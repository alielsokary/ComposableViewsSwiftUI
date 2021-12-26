//
//  TextViewHelper.swift
//  CompsingViewSwiftUI
//
//  Created by Ali on 26/12/2021.
//

import SwiftUI

struct TextViewHelper: View {
    let text: String
    
    var body: some View {
        Text(text)
            .fontStyle(TextStyle.labelMedium)
    }
}

struct TextViewHelper_Previews: PreviewProvider {
    static var previews: some View {
        TextViewHelper(text: "Example")
    }
}
