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
    var scene: InitialGameScene?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let view = self.skView {
            // Load the GameScene
            self.scene = InitialGameScene(size: CGSize(width: view.frame.width, height: view.frame.height))
            
            if let initialScene = scene{
                initialScene.anchorPoint = CGPoint(x: 0.5, y: 0.5)
                initialScene.position = CGPoint(x: 0, y: 0)
                
                // Present the scene
                view.presentScene(initialScene)
            }
        }
    }
}

