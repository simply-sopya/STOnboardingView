//
//  onboardingImage.swift
//  STOnboardingView
//
//  Created by Swap on 22/05/25.
//

import SwiftUI
extension STOnboardingInternal {
    
    @ViewBuilder
     func onboardingImage(for page: STOnboardingPageData) -> some View {
        let width = page.imageSize?.width ?? UIScreen.main.bounds.width * 0.8
        let height = page.imageSize?.height ?? UIScreen.main.bounds.height * 0.4
        let cornerRadius = page.imageCornerRadius ?? 5

        switch page.image {
        case .remote(let url):
            AsyncImage(url: url) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: width, maxHeight: height)
                        .cornerRadius(cornerRadius)
                case .failure:
                    fallbackLocalImage(page: page, width: width, height: height, cornerRadius: cornerRadius)
                @unknown default:
                    fallbackLocalImage(page: page, width: width, height: height, cornerRadius: cornerRadius)
                }
            }
        case .local(let name):
            Image(name, bundle: .main)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: width, maxHeight: height)
                .cornerRadius(cornerRadius)
        case .none:
            fallbackLocalImage(page: page, width: width, height: height, cornerRadius: cornerRadius)
        }
    }
}
