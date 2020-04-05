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
    var scneGame: GameScene?
    var stickerTouristSpot: SKSpriteNode?
    
    override init() {
        stickerTouristSpot = SKSpriteNode(imageNamed: "stickerTeste")
        stickerTouristSpot?.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        stickerTouristSpot?.position = CGPoint(x: 0, y: 0)
        super.init()
        self.addChild(stickerTouristSpot!)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
