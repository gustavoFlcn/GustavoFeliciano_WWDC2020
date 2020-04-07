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
            presentDialogBallon(dialogNumber: 1)
            break
        case CGPoint(x: -15.0, y: -60.0):
            touristSpot = self.sceneGame.touristSpots![1] as TouristSpot
            touristSpot.stateMachine?.enter(Visited.self)
            presentDialogBallon(dialogNumber: 2)
            break
        case CGPoint(x: -98.0, y: 140.0):
            touristSpot = self.sceneGame.touristSpots![2] as TouristSpot
            touristSpot.stateMachine?.enter(Visited.self)
            presentDialogBallon(dialogNumber: 3)
            break
        case CGPoint(x: 138.0, y: 155.0):
            touristSpot = self.sceneGame.touristSpots![3] as TouristSpot
            touristSpot.stateMachine?.enter(Visited.self)
            presentDialogBallon(dialogNumber: 4)
            break
        case CGPoint(x: 270, y: 60.0):
            presentDialogBallon(dialogNumber: 5)
            break
        default:
            break
        }
    }
    
    func presentDialogBallon(dialogNumber: Int){
        self.sceneGame.popUp?.localDescription?.numberOfLines = 0
        self.sceneGame.popUp?.localDescription?.position = CGPoint(x: -20, y: -50)
        switch dialogNumber {
        case 1:
            self.sceneGame.popUp?.localDescription?.position = CGPoint(x: -10, y: -50)
            self.sceneGame.popUp?.localDescription?.text = "Bem vindo a igrejinha de Santo Antônio!\nEssa é igreja mais antiga da cidade,\ncom mais de 250 anos e foi construída\npelos escravos que viviam aqui. Interessante, não acha?"
            break
        case 2:
            self.sceneGame.popUp?.localDescription?.text = "Vou ter falar baixinho! Chegamos no santuário de\nSanto Antônio. Essa é principal e maior igreja da\ncidade, aqui reside a imagem do padroeiro da cidade\ne acontece a tradicional festa do glorioso St. Antonio."
            break
        case 3:
            self.sceneGame.popUp?.localDescription?.text = "Aqui é onde onde enchemos a pança! Hehe.\nO nome dessa rua é Rua da Alegria, ela é\npraticamente a praça de alimentação da cidade.\nTodo mundo vem comer aqui."
            break
        case 4:
            self.sceneGame.popUp?.localDescription?.text = "Agora chegamos a feira coberta, ou só feira mesmo.\nEsse é o principal ponto de comércio da cidade,\ntudo fica aqui ao redor. Se você precisa de verdura a\ncarregador é aqui que você vai encontrar."
            break
        case 5:
            self.sceneGame.popUp?.localDescription?.text = "Parabéns você chegou ao último ponto turístico da sua\njornada, a minha casa. Aqui você pode econtrar comigo\npara tomar um café e conversar um pouco.\nGostou? Na práoxima você que vai ser meu guia. Ok?"
            break
        default:
            break
        }
    }
    
}
