//
//  ViewController.swift
//  PlayingCard
//
//  Created by kai.chen on 2017/12/14.
//  Copyright © 2017年 dapaimian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var deck = PlayingCardDeck()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var card = deck.draw()
        while card != nil {
            print("\(card!)")
            card = deck.draw()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

