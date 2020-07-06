//
//  TouristPopUp.swift
//  projetoWWDC20
//
//  Created by Gustavo Feliciano Figueiredo on 02/04/20.
//  Copyright © 2020 Gustavo Feliciano Figueiredo. All rights reserved.
//

import SpriteKit

class TouristPopUp: SKNode{
    var touristPoint: SKSpriteNode
    
    override init() {
        self.touristPoint = SKSpriteNode(imageNamed: "stickerTeste")
        self.touristPoint.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        self.touristPoint.position = CGPoint(x: 0, y: 0)
        self.touristPoint.zPosition = 1
        super.init()
        self.addChild(self.touristPoint)
    }

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
