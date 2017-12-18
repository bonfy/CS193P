//
//  PlayingCardView.swift
//  PlayingCard
//
//  Created by kai.chen on 2017/12/18.
//  Copyright © 2017年 dapaimian. All rights reserved.
//

import UIKit

class PlayingCardView: UIView {

    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        let roundeRect = UIBezierPath(roundedRect: bounds, cornerRadius: 16.0)
        roundeRect.addClip()
        UIColor.white.setFill()
        roundeRect.fill()
    }
}
