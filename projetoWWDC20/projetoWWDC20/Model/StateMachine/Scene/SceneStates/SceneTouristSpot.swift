//
//  SceneTouristSpot.swift
//  projetoWWDC20
//
//  Created by Gustavo Feliciano Figueiredo on 02/04/20.
//  Copyright © 2020 Gustavo Feliciano Figueiredo. All rights reserved.
//

import SpriteKit
import GameplayKit

class  SceneTourist: SceneState{
    override func isValidNextState(_ stateClass: AnyClass) -> Bool {
        return stateClass is SceneNormal.Type
    }
    
    //MARK: FAZER O POP UP SO APARECER QUANDO AINDA NAO FOR VISITADO E MUDAR TOURIST SPOT AO SER VISITADO
    override func didEnter(from previousState: GKState?) {
        self.sceneGame.character?.isPaused = true
        self.sceneGame.popUp?.isPaused = false
        let showPopUp = SKAction.fadeAlpha(to: 1.0, duration: 0.3)
        self.sceneGame.popUp?.run(showPopUp)
    }
    
    override func willExit(to nextState: GKState) {
        self.sceneGame.character?.removeAllActions()
        let hidePopUp = SKAction.fadeAlpha(to: 0.0, duration: 0.3)
        self.sceneGame.popUp?.run(hidePopUp)
        self.sceneGame.popUp?.isPaused = true
    }
    
    
}
