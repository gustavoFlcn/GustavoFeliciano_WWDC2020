//
//  ViewController.swift
//  projetoWWDC20
//
//  Created by Gustavo Feliciano Figueiredo on 27/03/20.
//  Copyright © 2020 Gustavo Feliciano Figueiredo. All rights reserved.
//

import Cocoa
import SpriteKit
import GameplayKit

class ViewController: NSViewController {

    @IBOutlet var skView: SKView!
    var scene: GameScene?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let view = self.skView {
            // Load the GameScene
            self.scene = GameScene(size: CGSize(width: view.frame.width, height: view.frame.height))
            
            if let gameScene = scene{
                gameScene.anchorPoint = CGPoint(x: 0.5, y: 0.5)
                gameScene.position = CGPoint(x: 0, y: 0)
                
                // Present the scene
                view.presentScene(gameScene)
            }
            
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }
}

