//
//  TextView.swift
//  CompsingViewSwiftUI
//
//  Created by Ali on 26/12/2021.
//

import SwiftUI

struct TextView: View {
    let text: String
    var body: some View {
        Text(text)
            .fontStyle(TextStyle.labelLarge)
    }    
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(text: "Example")
    }
}

