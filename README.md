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
- **Theme Customization**: Dark/Light/Auto theme switching
- **UI Customization**: Adjustable corner radius for the chat interface
- **Real-time Chat**: Interactive question-and-answer interface with the Magic 8-Ball

## Extra Credit Features Implemented

This demo app implements all the extra credit features from the original coding challenge:

- **Customization Options**: The SDK allows host apps to customize WebView appearance (background colors, button styles, corner radius)
- **Callbacks**: Provides comprehensive callbacks for WebView events (content loaded, error handling, status updates)
- **Unit Tests**: Full test suite ensuring SDK reliability and correct functionality
- **Cold Start Caching**: Implements web bundle caching so the experience works offline without internet access

## Screenshots

The app displays a fully functional Magic 8-Ball chat interface with:

- **Customization Panel**: Theme selection (Auto/Light/Dark) and corner radius slider
- **Status Indicator**: Green checkmark showing "Loaded successfully!" when SDK initializes
- **Chat Interface**: 
  - Chat history showing previous questions and answers
  - Text input field for new questions
  - Send button to submit questions
- **Native iOS Styling**: Seamless integration with iOS design patterns

![Magic 8-Ball SDK Demo App](assets/Screenshot%202025-07-18%20at%2011.45.00%20AM.png)

*The demo app running in iOS Simulator with dark theme, customization options, and chat interface visible.*

## Installation

1. Clone this repository
2. Open `Magic8Ball-iOS-Demo.xcodeproj` in Xcode
3. Build and run on iOS Simulator or device

The SDK is automatically included as a remote Swift Package dependency from GitHub, so no additional setup is required.

**Note**: This demo has been tested on iOS Simulator. While it should work on real devices, we haven't tested it on physical hardware. Feel free to try it on your device and report any issues!

## Requirements

- **iOS**: 14.0+
- **Xcode**: 12.0+
- **Swift**: 5.3+

## How It Works

The demo app imports the Magic8Ball iOS SDK (included as a remote Swift Package dependency) and uses the `Magic8BallView()` component in its main `ContentView`. The SDK handles all the WebView setup, loading, and interaction with the Magic 8-Ball web experience.

The app demonstrates:
- Remote SDK integration via Swift Package Manager
- Real-time chat functionality with the Magic 8-Ball
- UI customization options
- Status monitoring for SDK initialization

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
