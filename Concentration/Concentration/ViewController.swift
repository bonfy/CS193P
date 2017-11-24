//
//  ViewController.swift
//  Concentration
//  Created by kai.chen on 2017/11/23.
//  Copyright © 2017年 dapaimian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
    var flipCount: Int = 0
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCard(withEmoji: "🐶", on: sender)
    }
    @IBAction func touchSecondCard(_ sender: UIButton) {
        flipCard(withEmoji: "🐰", on: sender)
    }
    
    func flipCard(withEmoji emoji:String, on button:UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        }
        else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}

