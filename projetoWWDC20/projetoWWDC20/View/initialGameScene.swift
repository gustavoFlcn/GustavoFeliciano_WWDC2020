//
//  initialGameScene.swift
//  projetoWWDC20
//
//  Created by Gustavo Feliciano Figueiredo on 07/04/20.
//  Copyright © 2020 Gustavo Feliciano Figueiredo. All rights reserved.
//

import SpriteKit

class InitialGameScene: SKScene{
    var backGround: SKSpriteNode?
    var pressEnter: SKSpriteNode?
    var gameScene: GameScene?
    
    override func didMove(to view: SKView) {
        self.backGround = SKSpriteNode(imageNamed: "initialScene")
        self.backGround?.name = "bsckGroundInitial"
        self.backGround?.zPosition = 0
        self.backGround?.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        backGround?.size = CGSize(width: self.size.width, height: self.size.height)
        self.addChild(backGround!)
        
        self.pressEnter = SKSpriteNode(imageNamed: "pressEnterToPlay")
        self.pressEnter?.zPosition = 1
        self.pressEnter?.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        self.pressEnter?.position = CGPoint(x: 0, y: -100)
        self.pressEnter?.setScale(0.2)
        self.addChild(pressEnter!)
        animatePressEnter()
        
        self.gameScene = GameScene(size: CGSize(width: view.frame.width, height: view.frame.height))
    }
    
    func animatePressEnter(){
        let fadeOut = SKAction.fadeAlpha(to: 0, duration: 1)
        let fadeIn = SKAction.fadeAlpha(to: 1, duration: 1)
        let sequence = SKAction.sequence([fadeOut, fadeIn])
        let repeatForever = SKAction.repeatForever(sequence)
        self.pressEnter?.run(repeatForever)
    }
}

extension InitialGameScene{
    // Detect the event in kayboard
    override func keyDown(with event: NSEvent) {
        switch event.keyCode {
        case 36:
            if let scene = self.gameScene{
                scene.anchorPoint = CGPoint(x: 0.5, y: 0.5)
                scene.position = CGPoint(x: 0, y: 0)
                // Present the scene
                view!.presentScene(scene, transition: SKTransition.crossFade(withDuration: 2))
            }
        default:
            print("keyDown: \(event.characters!) keyCode: \(event.keyCode)")
        }
    }
}
