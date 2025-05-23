//
//  STOnboardingButtonType.swift
//  STOnboardingView
//
//  Created by Swap on 23/05/25.
//
import SwiftUI

public enum OnboardingButtonType {
    case filled, bordered, plain, capsule
}

extension View {
    func onboardingButtonStyle(_ type: OnboardingButtonType, textColor: Color, backgroundColor: Color) -> some View {
        switch type {
        case .filled:
            return AnyView(self
                .foregroundColor(textColor)
                .padding()
                .frame(maxWidth: .infinity)
                .background(backgroundColor)
                .cornerRadius(10))
        case .bordered:
            return AnyView(self
                .foregroundColor(backgroundColor)
                .padding()
                .frame(maxWidth: .infinity)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(backgroundColor, lineWidth: 2)
                ))
        case .plain:
            return AnyView(self
                .foregroundColor(textColor))
        case .capsule:
            return AnyView(self
                .font(.headline)
                .foregroundColor(textColor)
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
                .background(backgroundColor)
                .clipShape(Capsule())
                .frame(maxWidth: .infinity))
        }
    }
}
