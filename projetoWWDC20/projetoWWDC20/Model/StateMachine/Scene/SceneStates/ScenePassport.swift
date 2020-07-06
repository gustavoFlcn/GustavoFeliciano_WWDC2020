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
        self.sceneGame.touristPopUp?.isPaused = true
        self.sceneGame.passportPopUp?.isHidden = false
        showStickerInPassport()
    }
    
    override func willExit(to nextState: GKState) {
        self.sceneGame.character?.removeAllActions()
        self.sceneGame.passportPopUp?.keyEsc?.alpha = 0
    }
    
    func showStickerInPassport(){
        let passport = self.sceneGame.passportPopUp?.passport
        let wait = SKAction.wait(forDuration: 2)
        let fadeAnimation = SKAction.fadeAlpha(to: 1.0, duration: 1.5)
        let sequence = SKAction.sequence([wait, fadeAnimation])
        switch self.sceneGame.character?.position {
        case CGPoint(x: -195.0, y: -115.0):
            passport?.stickerIgrejinha.run(sequence)
            break
        case CGPoint(x: -15.0, y: -60.0):
            passport?.stickerSantuario.run(sequence)
            break
        case CGPoint(x: -98.0, y: 140.0):
            passport?.stickerRuaAlegria.run(sequence)
            break
        case CGPoint(x: 138.0, y: 155.0):
            passport?.stickerFeira.run(sequence)
            break
        case CGPoint(x: 270, y: 60.0):
            self.sceneGame.passportPopUp?.keyEsc?.isHidden = true
            passport?.stickerMinhaCasa.run(sequence){
                if let scene = self.sceneGame.endScene{
                    scene.anchorPoint = CGPoint(x: 0.5, y: 0.5)
                    scene.position = CGPoint(x: 0, y: 0)
                    // Present the scene
                    self.sceneGame.view!.presentScene(scene, transition: SKTransition.crossFade(withDuration: 2))
                }
            }
            break
        default:
            break
        }
        self.sceneGame.passportPopUp?.keyEsc?.run(sequence)
    }
    
}
