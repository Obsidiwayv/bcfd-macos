//
//  UIButton.swift
//  BCFD
//
//  Created by Wayv on 6/12/25.
//

import SwiftUI

struct UIButtonStyle: ButtonStyle {
    var bgColor: Color
    var fgColor: Color = .white
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .buttonStyle(.plain)
            .background(bgColor)
            .foregroundColor(fgColor)
            .shadow(radius: 15)
            .cornerRadius(10)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
            .opacity(configuration.isPressed ? 0.6 : 1.0)
            .animation(.easeInOut, value: configuration.isPressed)
    }
}
