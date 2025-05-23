//
//  fallbackLocalImage.swift
//  STOnboardingView
//
//  Created by Swap on 23/05/25.
//

import SwiftUI
extension STOnboardingView {
    @ViewBuilder
     func fallbackLocalImage(page: STOnboardingPageData, width: CGFloat, height: CGFloat, cornerRadius: CGFloat) -> some View {
        if let placeholder = page.placeholderImageName,
           UIImage(named: placeholder, in: .main, with: nil) != nil {
            Image(placeholder, bundle: .main)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: width, maxHeight: height)
                .cornerRadius(cornerRadius)
        }
    }


}
