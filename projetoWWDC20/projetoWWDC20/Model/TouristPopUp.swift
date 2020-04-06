//
//  TouristPopUp.swift
//  projetoWWDC20
//
//  Created by Gustavo Feliciano Figueiredo on 05/04/20.
//  Copyright © 2020 Gustavo Feliciano Figueiredo. All rights reserved.
//

import GameplayKit
import SpriteKit

class TouristPopUp: SKNode{
    var sceneGame: GameScene?
    var blurPopUp: SKSpriteNode?
    var stickerTouristSpot: SKSpriteNode?
    var keyEsc: SKSpriteNode?
    
    override init() {
        blurPopUp = SKSpriteNode()
        blurPopUp?.color = .black
        blurPopUp?.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        blurPopUp?.zPosition = 0
        blurPopUp?.size = CGSize(width: 800, height: 600)
        blurPopUp?.alpha = 0.5
        blurPopUp?.position = CGPoint(x: 0, y: 0)
        
        stickerTouristSpot = SKSpriteNode(imageNamed: "stickerTeste")
        stickerTouristSpot?.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        stickerTouristSpot?.zPosition = 3
        stickerTouristSpot?.position = CGPoint(x: 0, y: 0)
        
        keyEsc = SKSpriteNode(imageNamed: "esc")
        keyEsc?.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        keyEsc?.size = CGSize(width: 80, height: 50)
        keyEsc?.zPosition = 3
        keyEsc?.position = CGPoint(x: 100, y: 130)
        
        super.init()
        self.alpha = 0
        self.addChild(stickerTouristSpot!)
        self.addChild(keyEsc!)
        self.addChild(blurPopUp!)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
