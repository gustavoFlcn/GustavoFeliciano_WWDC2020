//
//  GameScene.swift
//  projetoWWDC20
//
//  Created by Gustavo Feliciano Figueiredo on 27/03/20.
//  Copyright © 2020 Gustavo Feliciano Figueiredo. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    private var backGround: SKSpriteNode?
    private var character : Character?
    
    override func didMove(to view: SKView) {
        self.backGround = SKSpriteNode(imageNamed: "map")
        self.backGround?.zPosition = 0
        backGround?.size = CGSize(width: self.size.width*0.8, height: self.size.height*0.8)
        self.addChild(backGround!)
        
        self.character = Character(imageNamed: "character")
        self.character?.zPosition = 1
        self.character?.position = CGPoint(x: -350, y: 200)
        self.character?.size = CGSize(width: self.size.height*0.1, height: self.size.height*0.1)
        self.addChild(character!)
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}

//MARK: Keyboard inputs
extension GameScene{
    // Detect the event in kayboard
    override func keyDown(with event: NSEvent) {
        switch event.keyCode {
        case 124:
            self.character?.moveToRight()
        case 123:
            self.character?.moveToLeft()
        default:
            print("keyDown: \(event.characters!) keyCode: \(event.keyCode)")
        }
    }
}
