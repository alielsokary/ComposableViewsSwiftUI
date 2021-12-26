//
//  FontsManager.swift
//  ThemeSample
//
//  Created by Ali on 20/12/2021.
//

import Foundation
import UIKit


enum Font: String {
    case regular = "CorisandeRegular"

    var name: String {
        return self.rawValue
    }
}

struct FontDescription {
    let font: Font
    let size: CGFloat
    let style: UIFont.TextStyle
}

enum TextStyle: String {
    case labelLarge = "label-large"
    case labelMedium = "label-medium"
    case bodyLarge = "body-large"
}

extension TextStyle {
    private var fontDescription: FontDescription {
        switch self {
        case .labelLarge:
            return FontDescription(font: .regular, size: 13.0, style: .body)
        case .labelMedium:
            return FontDescription(font: .regular, size: 11.0, style: .body)
        case .bodyLarge:
            return FontDescription(font: .regular, size: 16.0, style: .body)
        }
    }
}

extension TextStyle {
    var font: UIFont {
        guard let font = UIFont(name: fontDescription.font.name, size: fontDescription.size) else {
            return UIFont.preferredFont(forTextStyle: fontDescription.style)
        }

        let fontMetrics = UIFontMetrics(forTextStyle: fontDescription.style)
        return fontMetrics.scaledFont(for: font)
    }
    
    var size: CGFloat {
        let size = CGFloat(fontDescription.size)
        return size
    }
}
