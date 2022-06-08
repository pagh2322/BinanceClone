//
//  SignUpAndLogIn.swift
//  BinanceClone
//
//  Created by peo on 2022/06/08.
//

import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    let labelColor: Color
    let backgroundColor: Color
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(width: UIScreen.main.bounds.width / 2 - 20 - 10, height: 44)
            .foregroundColor(labelColor)
            .background(backgroundColor)
            .cornerRadius(30)
    }
}
