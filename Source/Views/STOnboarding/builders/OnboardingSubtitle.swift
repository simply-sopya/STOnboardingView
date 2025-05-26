//
//  OnboardingSubtitle.swift
//  STOnboardingView
//
//  Created by Swap on 23/05/25.
//

import SwiftUI
extension STOnboardingInternal {
    internal  func onboardingSubtitle(_ subtitle: String?) -> some View {
        Text(subtitle ?? "")
            .font(style.subtitleFont)
            .foregroundColor(style.theme.subtitleColor)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
    }
    
}
