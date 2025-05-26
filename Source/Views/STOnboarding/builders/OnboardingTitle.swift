//
//  OnboardingTitle.swift
//  STOnboardingView
//
//  Created by Swap on 23/05/25.
//

import SwiftUI
extension STOnboardingInternal {
    internal func onboardingTitle(_ title: String?) -> some View {
        Text(title ?? "")
            .font(style.titleFont)
            .foregroundColor(style.theme.titleColor)
    }
}
