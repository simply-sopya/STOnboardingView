//
//  OnboardingPage.swift
//  STOnboardingView
//
//  Created by Swap on 22/05/25.
//

import SwiftUI
extension STOnboardingInternal {
    @ViewBuilder
    internal func onboardingPage(for index: Int) -> some View {
        let page = data[index]

        if page.image != nil {
            switch style.layout {
            case .imageTop:
                VStack(spacing: 20) {
                    onboardingImage(for: page)
                    onboardingTitle(page.title)
                    onboardingSubtitle(page.subtitle)
                }
            case .imageBottom:
                VStack(spacing: 20) {
                    onboardingTitle(page.title)
                    onboardingSubtitle(page.subtitle)
                    onboardingImage(for: page)
                }
            case .imageMiddle:
                VStack(spacing: 20) {
                    onboardingTitle(page.title)
                    onboardingImage(for: page)
                    onboardingSubtitle(page.subtitle)
                }
            }
        } else {
            VStack(spacing: 20) {
                onboardingTitle(page.title)
                onboardingSubtitle(page.subtitle)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .multilineTextAlignment(.center)
            .contentShape(Rectangle())
        }
    }
}
