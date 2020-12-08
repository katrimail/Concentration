//
//  ConcentrationApp.swift
//  Shared
//
//  Created by Катрин Маилян on 08.12.2020.
//

import SwiftUI

@main
struct ConcentrationApp: App {
    var body: some Scene {
        WindowGroup {
            #if os(iOS)
            EmojiMemoryGameView()
            #else
            EmojiMemoryGameView()
                .frame(minWidth: 320, minHeight: 320)
            #endif
            
        }
    }
}
