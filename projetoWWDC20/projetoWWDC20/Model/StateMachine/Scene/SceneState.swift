//
//  SceneState.swift
//  projetoWWDC20
//
//  Created by Gustavo Feliciano Figueiredo on 02/04/20.
//  Copyright © 2020 Gustavo Feliciano Figueiredo. All rights reserved.
//

import SpriteKit
import GameplayKit

class SceneState: GKState{
    unowned let sceneGame: GameScene
    
    init(scene: GameScene) {
        self.sceneGame = scene
    }
  
}
