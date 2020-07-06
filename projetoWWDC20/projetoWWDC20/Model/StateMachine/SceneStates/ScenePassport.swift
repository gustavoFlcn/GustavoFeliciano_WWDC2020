//
//  ScenePassport.swift
//  projetoWWDC20
//
//  Created by Gustavo Feliciano Figueiredo on 02/04/20.
//  Copyright © 2020 Gustavo Feliciano Figueiredo. All rights reserved.
//

import SpriteKit
import GameplayKit

class  ScenePassport: SceneState{
    override func isValidNextState(_ stateClass: AnyClass) -> Bool {
        return stateClass is SceneNormal.Type
    }
    
    override func didEnter(from previousState: GKState?) {
        self.sceneGame.character?.isPaused = true
    }
    
    override func willExit(to nextState: GKState) {
        self.sceneGame.character?.removeAllActions()
    }
}
