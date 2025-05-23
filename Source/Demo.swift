//
//  Demo.swift
//  STOnboardingView
//
//  Created by Swap on 20/05/25.
//

import SwiftUI


struct DemoOnboardingApp: View {
    @AppStorage("hasCompletedOnboarding") var hasCompleted = false

    var body: some View {
      //  WindowGroup {
        VStack {
            if hasCompleted {
                MainAppView()
            } else {
                STOnboardingView(
                    data: onboardingPages,
                    style: STOnboardingStyle(
                        layout: .imageTop,
                        skipText: "Skip", nextText: "Next", finishText: "Start", showsSkipButton: true, showsFinishButton: true, theme: .light
                    )
                ) {
                    hasCompleted = true
                }
            }
            // }
        }
    }

    var onboardingPages: [STOnboardingPageData] {
        [
            STOnboardingPageData(
                title: "Welcome to the App",
                subtitle: "Discover amazing features with just a few taps.",
                image: .local(name: "https://via.placeholder.com/300.png"),
                placeholderImageName: "fallback1"
            ),
            STOnboardingPageData(
                title: "Stay Organized",
                subtitle: "Keep track of your tasks and progress easily.",
                image: .local(name: "https://via.placeholder.com/300.png"),
                placeholderImageName: "fallback2"
            ),
            STOnboardingPageData(
                title: "Sync Across Devices",
                subtitle: "Everything stays updated wherever you go.",
                image: .remote(url: URL(string: "https://via.placeholder.com/300.png")!),
                placeholderImageName: "fallback3"
            )
        ]
    }
}

struct MainAppView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("🎉 You're In!")
                .font(.largeTitle)
                .bold()
            Text("This is your main app content.")
                .foregroundColor(.gray)
        }
        .padding()
    }
}


#Preview {
    DemoOnboardingApp()
}
