//
//  Concentration.swift
//  Concentration
//
//  Created by kai.chen on 2017/11/29.
//  Copyright © 2017年 dapaimian. All rights reserved.
//

import Foundation

class Concentration {
    
    var cards = [Card]()
    var indexOfOneAndOnlyFaceUpCard: Int?
    
    func chooseCard(at index: Int) {
        
        // assert 是方便调试
        assert(cards.indices.contains(index), "Concentration.chooseCard(at: \(index)) : Choosen index out of range")
        
        if !cards[index].isMatched {
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
                // check if cards match
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = nil    // not one and only ...
            } else {
                // either no card or two cards face up
                for flipdownIndex in cards.indices {
                    cards[flipdownIndex].isFaceUp = false
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = index
            }
            
        }
    }
    
    init(numberOfPairsOfCards: Int) {
        
        assert(numberOfPairsOfCards > 0, "Concentration.init(\(numberOfPairsOfCards)) : You must have at least one pair of cards")
        
        var unShuffeldCards: [Card] = []
        
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            unShuffeldCards += [card, card]
        }
        //    TODO: Shuffle the cards
        
        while !unShuffeldCards.isEmpty {
            let randomIndex = Int(arc4random_uniform(UInt32(unShuffeldCards.count)))
            let card = unShuffeldCards.remove(at: randomIndex)
            cards.append(card)
        }
    }
    
}
