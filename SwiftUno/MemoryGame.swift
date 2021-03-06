//
//  MemoryGame.swift
//  SwiftUno
//
//  Created by Usaid Peerzada on 11/14/21.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    func choose(_ card: Card) {
        
    }
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content: CardContent = createCardContent(pairIndex)
            cards.append(Card(content: content))
        }
    }
    struct Card { 
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
