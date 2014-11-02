//
//  GameScene.swift
//  SkyJumper
//
//  Created by Darion on 02.10.14.
//  Copyright (c) 2014 test. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
		let test = SKLabelNode(fontNamed: "Chalkduster")
		
		test.text = "SkyJumper"
		test.fontSize = 70
		test.fontColor = UIColor(red: 0, green: 100, blue: 100, alpha: 50)
		test.position = CGPoint(x: 89, y: 100)
		myLabel.text = "Hello, World!";
        myLabel.fontSize = 65;
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
		
		self.addChild(test)
        self.addChild(myLabel)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            
            let sprite = SKSpriteNode(imageNamed:"SkillGames")
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(sprite)
        }
	}
	
    override func update(currentTime: CFTimeInterval) {
		/* Called before each frame is rendered */
		print(currentTime)
    }
}
