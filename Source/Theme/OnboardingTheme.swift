//
//  OnboardingTheme.swift
//  STOnboardingView
//
//  Created by Swap on 22/05/25.
//

import SwiftUI

public struct STOnboardingTheme {
    public let backgroundColor: Color
    public let titleColor: Color
    public let subtitleColor: Color
    public let buttonBackgroundColor: Color
    public let buttonTextColor: Color
    public let buttonType: OnboardingButtonType
    
    
    public  init(backgroundColor: Color, titleColor: Color, subtitleColor: Color, buttonBackgroundColor: Color, buttonTextColor: Color, buttonType: OnboardingButtonType) {
        self.backgroundColor = backgroundColor
        self.titleColor = titleColor
        self.subtitleColor = subtitleColor
        self.buttonBackgroundColor = buttonBackgroundColor
        self.buttonTextColor = buttonTextColor
        self.buttonType = buttonType
    }

    public static let light = STOnboardingTheme(
        backgroundColor: .white,
        titleColor: .black,
        subtitleColor: .gray,
        buttonBackgroundColor: .blue,
        buttonTextColor: .white
        , buttonType: .capsule
    )

    public static let dark = STOnboardingTheme(
        backgroundColor: .black,
        titleColor: .white,
        subtitleColor: .gray,
        buttonBackgroundColor: .blue,
        buttonTextColor: .white, buttonType: .capsule
    )
}
