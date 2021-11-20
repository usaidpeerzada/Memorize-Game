//
//  EmojiMemoryGame.swift
//  SwiftUno
//
//  Created by Usaid Peerzada on 11/14/21.
//

import SwiftUI

func makeCardContent(index: Int) -> String {
    let emojis = ["👨‍💻", "🥸", "🤬", "🤯"]
    return emojis[index]
}
class EmojiMemoryGame {
    
    private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 3, createCardContent: makeCardContent)
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
