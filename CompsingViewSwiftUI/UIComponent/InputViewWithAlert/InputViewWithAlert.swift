//
//  InputViewWithAlert.swift
//  CompsingViewSwiftUI
//
//  Created by Ali on 26/12/2021.
//

import SwiftUI

struct InputViewWithAlert: View {
    var body: some View {
        let alertText = "Ah i’m the error state for this input field. Come on fill me up!"
        let icon = Image("exc-icon")
        VStack(alignment: .leading) {
            InputView()
            TextViewWithIcon(text: alertText, icon: icon)
        }
    }
}

struct InputViewWithAlert_Previews: PreviewProvider {
    static var previews: some View {
        InputViewWithAlert()
    }
}
