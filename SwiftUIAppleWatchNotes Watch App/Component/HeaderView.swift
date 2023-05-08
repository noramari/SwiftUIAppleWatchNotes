//
//  HeaderView.swift
//  SwiftUIAppleWatchNotes Watch App
//
//  Created by Noora Maeda on 2023/05/08.
//

import SwiftUI

struct HeaderView: View {
    var title: String = ""
    
    var body: some View {
        VStack {
            if title != "" {
                Text(title.uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.accentColor)
            }
            
            HStack {
                Capsule()
                    .frame(height: 1)
                
                Image(systemName: "note.text")
                
                Capsule()
                    .frame(height: 1)
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Credits")
        HeaderView()
    }
}
