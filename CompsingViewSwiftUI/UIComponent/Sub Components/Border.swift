//
//  Border.swift
//  CompsingViewSwiftUI
//
//  Created by Ali on 26/12/2021.
//

import SwiftUI

struct Border: View {
    let color: String
    var body: some View {
        RoundedRectangle(cornerRadius: 8.0)
            .strokeBorder(Color(color), style: StrokeStyle(lineWidth: 1.0))
    }
}

struct Border_Previews: PreviewProvider {
    static var previews: some View {
        Border(color: ColorStyle.primaryred())
    }
}
