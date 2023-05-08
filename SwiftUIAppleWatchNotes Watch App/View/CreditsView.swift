//
//  CreditsView.swift
//  SwiftUIAppleWatchNotes Watch App
//
//  Created by Noora Maeda on 2023/05/08.
//

import SwiftUI

struct CreditsView: View {
    
    @State private var randomNumber: Int = Int.random(in: 1..<4)
    
    private var randomImage: String {
        return "developer-no\(randomNumber)"
    }
    
    var body: some View {
        VStack(spacing: 3) {
            
            Image("developer-no2")
                .resizable()
                .scaledToFit()
                .layoutPriority(1)

//            Image(randomImage)
//                .resizable()
//                .scaledToFit()
//                .layoutPriority(1)
            
            HeaderView(title: "Credits")
            
            Text("Noora Maeda")
                .foregroundColor(.primary)
                .fontWeight(.bold)
            
            Text("Developer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
        }
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
