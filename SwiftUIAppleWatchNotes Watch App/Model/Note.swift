//
//  Note.swift
//  SwiftUIAppleWatchNotes Watch App
//
//  Created by Noora Maeda on 2023/05/08.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
