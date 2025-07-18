//
//  ContentView.swift
//  Magic8Ball-iOS-Demo
//
//  Created by gianmarco salerno on 7/18/25.
//

import SwiftUI
import Magic8Ball_iOS_SDK

struct ContentView: View {
    @State private var selectedTheme: Magic8BallTheme = .auto
    @State private var backgroundColor: Color = .clear
    @State private var cornerRadius: CGFloat = 0
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Magic 8-Ball SDK Demo")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            // Customization controls
            VStack(alignment: .leading, spacing: 10) {
                Text("Customization Options:")
                    .font(.headline)
                
                Picker("Theme", selection: $selectedTheme) {
                    Text("Auto").tag(Magic8BallTheme.auto)
                    Text("Light").tag(Magic8BallTheme.light)
                    Text("Dark").tag(Magic8BallTheme.dark)
                }
                .pickerStyle(SegmentedPickerStyle())
                
                HStack {
                    Text("Background:")
                    ColorPicker("", selection: $backgroundColor)
                }
                
                HStack {
                    Text("Corner Radius: \(Int(cornerRadius))")
                    Slider(value: $cornerRadius, in: 0...20)
                }
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
            
            // Magic 8-Ball with customization
            Magic8BallView(
                theme: selectedTheme,
                backgroundColor: backgroundColor,
                cornerRadius: cornerRadius
            )
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
