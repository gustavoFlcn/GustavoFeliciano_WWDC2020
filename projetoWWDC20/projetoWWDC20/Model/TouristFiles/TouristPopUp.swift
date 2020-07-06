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
    var keyEnter: SKSpriteNode?
    var touristGuide: SKSpriteNode?
    var localDescription: SKLabelNode?
    var dialogBallon: SKSpriteNode?
    
    override init() {
        blurPopUp = SKSpriteNode()
        blurPopUp?.color = .black
        blurPopUp?.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        blurPopUp?.zPosition = 0
        blurPopUp?.size = CGSize(width: 800, height: 600)
        blurPopUp?.alpha = 0.5
        blurPopUp?.position = CGPoint(x: 0, y: 0)
        
        keyEnter = SKSpriteNode(imageNamed: "enter")
        keyEnter?.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        keyEnter?.setScale(0.2)
        keyEnter?.zPosition = 3
        keyEnter?.position = CGPoint(x: 320, y: 250)
        
        stickerTouristSpot = SKSpriteNode(imageNamed: "igrejinhaSticker")
        stickerTouristSpot?.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        stickerTouristSpot?.size = CGSize(width: 280, height: 300)
        stickerTouristSpot?.zPosition = 3
        stickerTouristSpot?.position = CGPoint(x: 0, y: 80)
        
        
        touristGuide = SKSpriteNode(imageNamed: "touristGuide")
        touristGuide?.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        touristGuide?.size = CGSize(width: 180, height: 350)
        touristGuide?.zRotation = 0.15
        touristGuide?.zPosition = 3
        touristGuide?.position = CGPoint(x: 300, y: -180)
        
        dialogBallon = SKSpriteNode(imageNamed: "dialogBallon")
        dialogBallon?.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        dialogBallon?.size = CGSize(width: 600, height: 150)
        dialogBallon?.zPosition = 3
        dialogBallon?.position = CGPoint(x: -80, y: -150)
        
        localDescription = SKLabelNode()
        localDescription?.fontSize = 21
        localDescription?.fontColor = #colorLiteral(red: 0.7490196078, green: 0.4823529412, blue: 0.1215686275, alpha: 1)
        localDescription?.fontName = "Chalkboard SE"
        localDescription?.numberOfLines = 0
        localDescription?.position = CGPoint(x: -20, y: -50)

        super.init()
        self.alpha = 0
        self.addChild(blurPopUp!)
        self.addChild(stickerTouristSpot!)
        self.addChild(keyEnter!)
        self.addChild(touristGuide!)
        self.addChild(dialogBallon!)
        self.dialogBallon?.addChild(localDescription!)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
