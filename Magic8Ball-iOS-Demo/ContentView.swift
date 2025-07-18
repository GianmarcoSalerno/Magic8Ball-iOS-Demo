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
    @State private var cornerRadius: CGFloat = 0
    @State private var loadStatus = "Waiting..."
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Magic 8-Ball SDK Demo")
                .font(.title)
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
                    Text("Corner Radius: \(Int(cornerRadius))")
                    Slider(value: $cornerRadius, in: 0...20)
                }
                
                Text("Status: \(loadStatus)")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
            
            // Magic 8-Ball with customization and callbacks
            Magic8BallView(
                theme: selectedTheme,
                cornerRadius: cornerRadius,
                onLoad: {
                    loadStatus = "✅ Loaded successfully!"
                },
                onError: { error in
                    loadStatus = "❌ Error: \(error.localizedDescription)"
                }
            )
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
