//
//  SceneNormal.swift
//  projetoWWDC20
//
//  Created by Gustavo Feliciano Figueiredo on 02/04/20.
//  Copyright © 2020 Gustavo Feliciano Figueiredo. All rights reserved.
//

import SpriteKit
import GameplayKit

class  SceneNormal: SceneState{
    override func isValidNextState(_ stateClass: AnyClass) -> Bool {
        return stateClass is SceneTourist.Type || stateClass is ScenePassport.Type
    }
    
    override func didEnter(from previousState: GKState?) {
        self.sceneGame.character?.isPaused = false
        self.sceneGame.popUp?.isPaused = true
    }
}
