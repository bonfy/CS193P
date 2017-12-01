//
//  Concentration.swift
//  Concentration
//
//  Created by kai.chen on 2017/11/29.
//  Copyright © 2017年 dapaimian. All rights reserved.
//

import Foundation

class Concentraction
{
    var cards = [Card]()
    
    func chooseCard(at index: Int) {
        cards[index].isFaceUp = !cards[index].isFaceUp
    }
    
    init(numberOfPairsOfCards: Int) {
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
//            let matchingCard = card // 因为这个是个 copy
//            cards.append(card)
//            cards.append(card)     // 这个也会copy
            
            cards += [card, card]    // array 也是copy
        }
        
        // TODO: Shuffle the cards
        
    }
}
