//
//  PassportPopUp.swift
//  projetoWWDC20
//
//  Created by Gustavo Feliciano Figueiredo on 07/04/20.
//  Copyright © 2020 Gustavo Feliciano Figueiredo. All rights reserved.
//

import GameplayKit
import SpriteKit

class PassportPopUp: SKNode{
    var blurPopUp: SKSpriteNode?
    var passport: Passport
    var keyEsc: SKSpriteNode?

    
    override init() {
        blurPopUp = SKSpriteNode()
        blurPopUp?.color = .black
        blurPopUp?.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        blurPopUp?.zPosition = 0
        blurPopUp?.size = CGSize(width: 800, height: 600)
        blurPopUp?.alpha = 0.5
        blurPopUp?.position = CGPoint(x: 0, y: 0)
        
        self.passport = Passport(imageNamed: "passport")
        self.passport.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        self.passport.position = CGPoint(x: 0, y: 0)
        self.passport.zPosition = 1
        self.passport.setScale(0.8)
        
        keyEsc = SKSpriteNode(imageNamed: "esc")
        keyEsc?.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        keyEsc?.setScale(0.2)
        keyEsc?.zPosition = 3
        keyEsc?.alpha = 0
        keyEsc?.position = CGPoint(x: -320, y: 250)
        
        super.init()
        self.addChild(blurPopUp!)
        self.addChild(self.passport)
        self.addChild(keyEsc!)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
