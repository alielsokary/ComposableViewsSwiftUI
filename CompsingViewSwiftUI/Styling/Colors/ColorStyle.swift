//
//  ColorStyle.swift
//  CompsingViewSwiftUI
//
//  Created by Ali on 26/12/2021.
//

import Foundation

// Which token to include? "primary-red" , "error-text-color", "Red-100"
enum ColorStyle: String {
    case primaryred = "primary-red"
    case uibackground = "ui-background"
    case uiborder = "ui-border"
    case textcolor01 = "text-color-01"
    case textcolor02 = "text-color-02"
    case textcolor04 = "text-color-04"
    case errortextcolor = "error-text-color"
    
    
    /// To avoid calling .rawValue (available on Swift 5.2)
    /// - Returns: ColorStyle.color()
    func callAsFunction() -> String {
        return self.rawValue
    }
}
