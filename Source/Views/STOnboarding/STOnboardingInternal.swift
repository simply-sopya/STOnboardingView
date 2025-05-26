//
//  STOnboarding.swift
//  Created by Swap on 20/05/25.
//



import SwiftUI

 struct STOnboardingInternal: View {
    internal let data: [STOnboardingPageData]
    internal let style: STOnboardingStyle
    @StateObject private var viewModel: STOnboardingViewModel
    
     init(data: [STOnboardingPageData], style: STOnboardingStyle = STOnboardingStyle(), onFinish: @escaping () -> Void) {
        self.data = data
        self.style = style
        _viewModel = StateObject(wrappedValue: STOnboardingViewModel(pageCount: data.count, onFinish: onFinish))
    }
    
     var body: some View {
        VStack {
            TabView(selection: $viewModel.currentPage) {
                ForEach(data.indices, id: \.self) { index in
                    onboardingPage(for: index)
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            
            HStack {
                if style.showsSkipButton, !viewModel.isLastPage, let skipText = style.skipText {
                    Button(action: viewModel.skip) {
                        Text(skipText)
                            .font(style.buttonFont)
                            .onboardingButtonStyle(
                                style.theme.buttonType,
                                textColor: style.theme.buttonTextColor,
                                backgroundColor: style.theme.buttonBackgroundColor
                            )
                    }
                }
                
                Spacer()
                
                Button(action: viewModel.next) {
                    Text(
                        viewModel.isLastPage
                        ? (style.showsFinishButton ? (style.finishText ?? style.nextText) : style.nextText)
                        : style.nextText
                    )
                    .font(style.buttonFont)
                    .onboardingButtonStyle(
                        style.theme.buttonType,
                        textColor: style.theme.buttonTextColor,
                        backgroundColor: style.theme.buttonBackgroundColor
                    )
                }
            }
            .padding(.horizontal)
        }
        .padding()
        .background(style.theme.backgroundColor)
    }
}
