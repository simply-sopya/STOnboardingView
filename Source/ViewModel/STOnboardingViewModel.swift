//
//  STOnboardingViewModel.swift
//  STOnboardingView
//
//  Created by Swap on 22/05/25.
//

import SwiftUI

 class STOnboardingViewModel: ObservableObject {
    @Published public var currentPage: Int = 0
    @AppStorage("hasCompletedOnboarding") public var hasCompleted: Bool = false

     let pageCount: Int
     let onFinish: () -> Void

     init(pageCount: Int, onFinish: @escaping () -> Void) {
        self.pageCount = pageCount
        self.onFinish = onFinish
    }

     func skip() {
        hasCompleted = true
        onFinish()
    }

     func next() {
        if currentPage < pageCount - 1 {
            currentPage += 1
        } else {
            finish()
        }
    }

     func finish() {
        hasCompleted = true
        onFinish()
    }

     var isLastPage: Bool {
        currentPage == pageCount - 1
    }
}
