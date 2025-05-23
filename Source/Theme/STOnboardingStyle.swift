//
//  STOnboardingStyle.swift
//  STOnboardingView
//
//  Created by Swap on 22/05/25.
//

import SwiftUI

public struct STOnboardingStyle {
    public enum Layout {
        case imageTop, imageBottom, imageMiddle
    }

    public var titleFont: Font
    public var subtitleFont: Font
    public var imageHeight: CGFloat
    public var layout: Layout

    public var skipText: String?
    public var nextText: String
    public var finishText: String?
    public var showsSkipButton: Bool
    public var showsFinishButton: Bool

    public var buttonFont: Font

    public var theme: STOnboardingTheme

    public init(
        titleFont: Font = .title,
        subtitleFont: Font = .subheadline,
        imageHeight: CGFloat = 250,
        layout: Layout = .imageTop,
        skipText: String? = "Skip",
        nextText: String = "Next",
        finishText: String? = nil,
        showsSkipButton: Bool = true,
        showsFinishButton: Bool = true,
        buttonFont: Font = .body.bold(),
        theme: STOnboardingTheme = .light
    ) {
        self.titleFont = titleFont
        self.subtitleFont = subtitleFont
        self.imageHeight = imageHeight
        self.layout = layout
        self.skipText = skipText
        self.nextText = nextText
        self.finishText = finishText
        self.showsSkipButton = showsSkipButton
        self.showsFinishButton = showsFinishButton
        self.buttonFont = buttonFont
        self.theme = theme
    }
}
