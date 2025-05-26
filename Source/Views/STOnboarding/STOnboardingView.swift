//
//  STOnboardingView.swift
//  STOnboardingViewFramework
//
//  Created by Swap on 27/05/25.
//

import SwiftUI

public struct STOnboardingView: View {
    public let data: [STOnboardingPageData]
    public let style: STOnboardingStyle
    public let onFinish: () -> Void

    public init(data: [STOnboardingPageData], style: STOnboardingStyle = STOnboardingStyle(), onFinish: @escaping () -> Void) {
        self.data = data
        self.style = style
        self.onFinish = onFinish
    }

    public var body: some View {
        STOnboardingInternal(data: data, style: style, onFinish: onFinish)
    }
}
