//
//  TextViewWithIcon.swift
//  CompsingViewSwiftUI
//
//  Created by Ali on 26/12/2021.
//

import SwiftUI

struct TextViewWithIcon: View {
    let text: String
    let icon: Image
    var body: some View {
        HStack {
            icon
            Text(text)
                .fontStyle(TextStyle.labelMedium)
                .foregroundColor(Color(ColorStyle.primaryred()))
        }
    }
}

struct TextViewWithIcon_Previews: PreviewProvider {
    static var previews: some View {
        TextViewWithIcon(text: "Example Text", icon: Image("exc-icon"))
    }
}
