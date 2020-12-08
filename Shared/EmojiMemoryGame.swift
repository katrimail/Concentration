//
//  EmojiMemoryGame.swift
//  Concentration
//
//  Created by Катрин Маилян on 08.12.2020.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
   static func createMemoryGame() -> MemoryGame<String>{
    let emojis = ["🍓", "🥥", "🥑", "🍑"]
    let emojisNumber = Int.random(in: 2...emojis.count)
    return MemoryGame<String>(numberOfPairsOfCards: emojisNumber) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    
    //MARK: - Access to the Model
    
   
    var cards: Array<MemoryGame<String>.Card>{
        model.cards
    }
  
   
    //MARK: - Intent
    
    func choose (card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
}
