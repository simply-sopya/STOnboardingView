//
//  STOnboardingPageData.swift
//  STOnboardingView
//
//  Created by Swap on 22/05/25.
//

import SwiftUI

public struct STOnboardingPageData {
    public enum ImageSource {
        case local(name: String)
        case remote(url: URL)
    }

    public let title: String?
    public let subtitle: String?
    public let image: ImageSource?
    public let placeholderImageName: String?
    public let imageSize: CGSize?
    public let imageCornerRadius: CGFloat?

    public init(
        title: String? = nil,
        subtitle: String? = nil,
        image: ImageSource? = nil,
        placeholderImageName: String? = nil,
        imageSize: CGSize? = nil,
        imageCornerRadius: CGFloat? = nil
    ) {
        self.title = title
        self.subtitle = subtitle
        self.image = image
        self.placeholderImageName = placeholderImageName
        self.imageSize = imageSize ?? CGSize(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.4)
        self.imageCornerRadius = imageCornerRadius
    }
       
    
}
