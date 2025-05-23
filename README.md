# 📲 STOnboardingKit

A plug-and-play, fully customizable **SwiftUI onboarding framework** that helps you create elegant, themeable onboarding flows in minutes.

---

## 🚀 Features

✅ Page-based onboarding (`TabView` style)  
✅ Support for **local or remote images**  
✅ **Fully customizable** titles, subtitles, image sizes, and layout  
✅ Optional **Skip** and **Finish** buttons  
✅ **Theming support** (light/dark/custom themes)  
✅ Supports **capsule, filled, bordered, and plain** button styles  
✅ Automatically tracks current page and finishes cleanly  
✅ Clean MVVM architecture

---

## 🧱 Components Overview

### 1. `STOnboardingView`

The main SwiftUI component that renders the onboarding flow.  
Accepts an array of `STOnboardingPageData` and a `STOnboardingStyle`.

### 2. `STOnboardingPageData`

Defines the content for each onboarding screen:
```swift
public struct STOnboardingPageData {
    let title: String?
    let subtitle: String?
    let image: ImageSource? // .local(name:) or .remote(url:)
    let placeholderImageName: String?
    let imageSize: CGSize? // optional width and height
    let imageCornerRadius: CGFloat? // default: 5
}
```

### 3. `STOnboardingStyle`

Controls visual and behavioral customization of the entire onboarding flow:
```swift
public struct STOnboardingStyle {
    let layout: LayoutType // .imageTop, .imageBottom, .imageMiddle
    let theme: OnboardingTheme
    let showsSkipButton: Bool
    let showsFinishButton: Bool
    let skipText: String?
    let nextText: String
    let finishText: String?
    let buttonFont: Font
}
```

### 4. `OnboardingTheme`

Predefined styling themes (light/dark) or create your own:
```swift
public struct OnboardingTheme {
    let buttonType: OnboardingButtonType // .filled, .bordered, .plain, .capsule
    let backgroundColor: Color
    let titleColor: Color
    let subtitleColor: Color
    let buttonBackgroundColor: Color
    let buttonTextColor: Color

    static let light = ...
    static let dark = ...
}
```

### 5. `OnboardingButtonType`

Controls button appearance:
- `.filled`: background + white text
- `.bordered`: stroked border, no fill
- `.plain`: text-only
- `.capsule`: pill-shaped with background fill

---

## 🛠 Usage

### 1. Import the framework
```swift
import STOnboardingKit
```

### 2. Provide your page data
```swift
let onboardingData: [STOnboardingPageData] = [
    STOnboardingPageData(
        title: "Welcome",
        subtitle: "Discover our features.",
        image: .local(name: "onboard1"),
        placeholderImageName: "placeholder"
    ),
    STOnboardingPageData(
        title: "Track Progress",
        subtitle: "Monitor your success easily.",
        image: .remote(url: URL(string: "https://yourserver.com/image.png")!)
    )
]
```

### 3. Customize the style (optional)
```swift
let customStyle = STOnboardingStyle(
    layout: .imageTop,
    theme: .light,
    showsSkipButton: true,
    showsFinishButton: true,
    skipText: "Skip",
    nextText: "Next",
    finishText: "Start Now"
)
```

### 4. Use `STOnboardingView` in your app
```swift
@AppStorage("hasSeenOnboarding") var hasSeen = false

var body: some View {
    if hasSeen {
        MainAppView()
    } else {
        STOnboardingView(data: onboardingData, style: customStyle) {
            hasSeen = true
        }
    }
}
```

---

## 💡 Tips

- If `imageSize` is not provided, it defaults to 80% width × 40% height of the screen.
- If `imageCornerRadius` is not provided, a default radius of `5` is applied.
- If both `image` and `placeholderImageName` are nil or fail, only title/subtitle are shown centered.
- If `showsFinishButton` is `false`, the last page will reuse the `nextText` value.

---

## 📸 Preview Usage

```swift
#Preview {
    STOnboardingView(
        data: samplePages,
        style: .init(theme: .dark),
        onFinish: { print("Finished onboarding") }
    )
}
```

---

## 📦 Planned Features

- Animated page transitions
- Auto-scroll option
- Page indicator styling
- Localization and accessibility

---

## 📬 Questions or Contributions?

Feel free to [open an issue](https://github.com/your-repo/STOnboardingKit/issues) or submit a PR if you’d like to contribute to this project.
