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
    static var countPressedEnter = 0
    private let localDescription = LocalDescriptions()
    
    override func isValidNextState(_ stateClass: AnyClass) -> Bool {
        return stateClass is SceneNormal.Type
    }
    
    override func didEnter(from previousState: GKState?) {
        self.sceneGame.character?.isPaused = true
        self.sceneGame.popUp?.isPaused = false
        let showPopUp = SKAction.fadeAlpha(to: 1.0, duration: 0.3)
        self.sceneGame.popUp?.run(showPopUp)
        selectTouristSpot()
    }
    
    override func willExit(to nextState: GKState) {
        self.sceneGame.character?.removeAllActions()
        self.sceneGame.popUp?.isPaused = true
        self.sceneGame.popUp?.alpha = 0
        SceneTourist.countPressedEnter = 0
    }
    
    func selectTouristSpot(){
        var touristSpot: TouristSpot
        switch self.sceneGame.character?.position {
        case CGPoint(x: -195.0, y: -115.0):
            touristSpot = self.sceneGame.touristSpots![0] as TouristSpot
            touristSpot.stateMachine?.enter(Visited.self)
            selectPopUpInformations(touristPointNumber: 1)
            break
        case CGPoint(x: -15.0, y: -60.0):
            touristSpot = self.sceneGame.touristSpots![1] as TouristSpot
            touristSpot.stateMachine?.enter(Visited.self)
            selectPopUpInformations(touristPointNumber: 2)
            break
        case CGPoint(x: -98.0, y: 140.0):
            touristSpot = self.sceneGame.touristSpots![2] as TouristSpot
            touristSpot.stateMachine?.enter(Visited.self)
            selectPopUpInformations(touristPointNumber: 3)
            break
        case CGPoint(x: 138.0, y: 155.0):
            touristSpot = self.sceneGame.touristSpots![3] as TouristSpot
            touristSpot.stateMachine?.enter(Visited.self)
            selectPopUpInformations(touristPointNumber: 4)
            break
        case CGPoint(x: 270, y: 60.0):
            selectPopUpInformations(touristPointNumber: 5)
            break
        default:
            break
        }
    }
    
    func selectPopUpInformations(touristPointNumber: Int){
        self.sceneGame.popUp?.localDescription?.numberOfLines = 0
        self.sceneGame.popUp?.localDescription?.position = CGPoint(x: -20, y: -50)
        switch touristPointNumber {
        case 1:
            self.sceneGame.popUp?.localDescription?.text = localDescription.igrejinha
            self.sceneGame.popUp?.stickerTouristSpot?.texture = SKTexture(imageNamed: "igrejinhaSticker")
            break
        case 2:
            self.sceneGame.popUp?.localDescription?.text = localDescription.santuario
            self.sceneGame.popUp?.stickerTouristSpot?.texture = SKTexture(imageNamed: "santuarioSticker")
            break
        case 3:
            self.sceneGame.popUp?.localDescription?.text = localDescription.ruaDaAlegria
            self.sceneGame.popUp?.stickerTouristSpot?.texture = SKTexture(imageNamed: "stickerTeste")
            break
        case 4:
            self.sceneGame.popUp?.localDescription?.text = localDescription.feira
            self.sceneGame.popUp?.stickerTouristSpot?.texture = SKTexture(imageNamed: "stickerTeste")
            break
        case 5:
            self.sceneGame.popUp?.localDescription?.text = localDescription.minhaCasa
            self.sceneGame.popUp?.stickerTouristSpot?.texture = SKTexture(imageNamed: "stickerTeste")
            break
        default:
            break
        }
    }
}
