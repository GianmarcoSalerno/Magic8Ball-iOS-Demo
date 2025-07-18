# Magic8Ball iOS Demo App

A demonstration iOS app showing how to integrate the Magic8Ball iOS SDK with minimal code.

## Overview

This demo app showcases the "one-line integration" value proposition of the Magic8Ball iOS SDK. The entire Magic 8-Ball experience is added to the app with just:

```swift
Magic8BallView()
```

## Features Demonstrated

- **Simple Integration**: Shows how easy it is to add the SDK to an existing app
- **Native Feel**: The web-based Magic 8-Ball appears as a native part of the app
- **SwiftUI Integration**: Demonstrates SwiftUI best practices for SDK integration

## Screenshots

The app displays a chat interface where users can ask questions to the Magic 8-Ball and receive responses. The interface includes:

- Chat history showing previous questions and answers
- Text input field for new questions
- Send button to submit questions
- Native iOS styling and animations

## Installation

1. Clone this repository
2. Open `Magic8Ball-iOS-Demo.xcodeproj` in Xcode
3. Build and run on iOS Simulator or device

## Requirements

- **iOS**: 14.0+
- **Xcode**: 12.0+
- **Swift**: 5.3+

## How It Works

The demo app imports the Magic8Ball iOS SDK and uses the `Magic8BallView()` component in its main `ContentView`. The SDK handles all the WebView setup, loading, and interaction with the Magic 8-Ball web experience.

## Code Example

```swift
import SwiftUI
import Magic8Ball_iOS_SDK

struct ContentView: View {
    var body: some View {
        Magic8BallView()
    }
}
```

## SDK Repository

The SDK used in this demo is available at: [Magic8Ball-iOS-SDK](https://github.com/yourusername/Magic8Ball-iOS-SDK)

## License

MIT License - see LICENSE file for details.
