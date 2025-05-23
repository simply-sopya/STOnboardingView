//
//  STOnboardingViewModel.swift
//  STOnboardingView
//
//  Created by Swap on 22/05/25.
//

import SwiftUI

public class STOnboardingViewModel: ObservableObject {
    @Published public var currentPage: Int = 0
    @AppStorage("hasCompletedOnboarding") public var hasCompleted: Bool = false

    public let pageCount: Int
    private let onFinish: () -> Void

    public init(pageCount: Int, onFinish: @escaping () -> Void) {
        self.pageCount = pageCount
        self.onFinish = onFinish
    }

    public func skip() {
        hasCompleted = true
        onFinish()
    }

    public func next() {
        if currentPage < pageCount - 1 {
            currentPage += 1
        } else {
            finish()
        }
    }

    public func finish() {
        hasCompleted = true
        onFinish()
    }

    public var isLastPage: Bool {
        currentPage == pageCount - 1
    }
}
