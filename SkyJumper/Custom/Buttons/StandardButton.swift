//
//  StandardButton.swift
//  SkyJumper
//
//  Created by Darion on 01.11.14.
//  Copyright (c) 2014 test. All rights reserved.
//

import UIKit

class StandardButton: UIButton {

    override func drawRect(rect: CGRect) {
        let context: CGContextRef = UIGraphicsGetCurrentContext();
        let color: UIColor = UIColor (red: 0, green: 0.5, blue: 0.5, alpha: 1)
        self.setBackgroundImage(UIImage(named: "SkillGames"), forState: UIControlState.Normal)
        CGContextSetFillColorWithColor(context, color.CGColor)
        
        CGContextFillRect(context, rect)
    }
}
