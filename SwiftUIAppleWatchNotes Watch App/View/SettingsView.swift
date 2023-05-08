//
//  SettingsView.swift
//  SwiftUIAppleWatchNotes Watch App
//
//  Created by Noora Maeda on 2023/05/08.
//

import SwiftUI

struct SettingsView: View {
    
    @AppStorage("lineCount") var lineCount: Int = 1
    @State private var sliderValue: Float = 1.0
    
    var body: some View {
        VStack(spacing: 8) {
            HeaderView(title: "Settings")
            
            Text("Lines: \(lineCount)".uppercased())
                .fontWeight(.bold)
            
            Slider(value: Binding(get: {
                self.sliderValue
            }, set: { (newValue) in
                self.sliderValue = newValue
                self.update()
            }), in: 1...4, step: 1)
                .tint(.accentColor)
        }
    }
    
    func update() {
        lineCount = Int(sliderValue)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
