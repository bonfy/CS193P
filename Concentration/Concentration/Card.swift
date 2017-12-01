//
//  Card.swift
//  Concentration
//
//  Created by kai.chen on 2017/11/29.
//  Copyright © 2017年 dapaimian. All rights reserved.
//

import Foundation

struct Card
{
    // we are the model
    // no emoji here we don't have ui related things
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
//    也可以
//    init(identifier i: int) {
//        identifier = i
//    }
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        // 因为都是 static 的 可以去掉 Card
        // Card.identifierFactory += 1
        // return Card.identifierFactory
        
         identifierFactory += 1
         return identifierFactory
    }
    
    init(){
        self.identifier = Card.getUniqueIdentifier()
    }
}
