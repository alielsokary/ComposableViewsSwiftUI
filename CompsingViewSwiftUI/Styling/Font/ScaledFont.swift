//
//  ScaledFont.swift
//  CompsingViewSwiftUI
//
//  Created by Ali on 26/12/2021.
//

import Foundation
import SwiftUI

@available(iOS 13, macCatalyst 13, tvOS 13, watchOS 6, *)
struct FontStyle: ViewModifier {
    @Environment(\.sizeCategory) var sizeCategory

    var style: TextStyle

    func body(content: Content) -> some View {
        let scaledSize = UIFontMetrics.default.scaledValue(for: style.size)
        return content.font(.custom(style.font.fontName, size: scaledSize))
    }
}

@available(iOS 13, macCatalyst 13, tvOS 13, watchOS 6, *)
extension View {
    func fontStyle(_ style: TextStyle) -> some View {
        return self.modifier(FontStyle(style: style))
    }
}
