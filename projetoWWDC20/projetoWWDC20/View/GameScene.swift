//
//  GameScene.swift
//  projetoWWDC20
//
//  Created by Gustavo Feliciano Figueiredo on 27/03/20.
//  Copyright © 2020 Gustavo Feliciano Figueiredo. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var backGround: SKSpriteNode?
    var character : Character?
    var touristSpots: [TouristSpot]?
    var stateMachine: GKStateMachine?
    var touristPopUp: TouristPopUp?
    var passportPopUp: PassportPopUp?
    
    
    override func didMove(to view: SKView) {
        self.backGround = SKSpriteNode(imageNamed: "Mapa")
        self.backGround?.name = "map"
        self.backGround?.zPosition = 0
        backGround?.size = CGSize(width: self.size.width, height: self.size.height)
        self.addChild(backGround!)
        
        self.character = Character(imageNamed: "character")
        self.character?.sceneGame = self
        self.character?.name = "character"
        self.character?.zPosition = 3
        self.character?.position = CGPoint(x: -300, y: 100)
        self.character?.size = CGSize(width: self.size.height*0.09, height: self.size.height*0.16)
        self.addChild(character!)
        
        self.touristPopUp = TouristPopUp()
        self.touristPopUp?.position = CGPoint(x: 0, y: 0)
        self.touristPopUp?.zPosition = 4
        self.addChild(touristPopUp!)
        
        self.passportPopUp = PassportPopUp()
        self.passportPopUp?.position = CGPoint(x: 0, y: 0)
        self.passportPopUp?.zPosition = 4
        self.addChild(passportPopUp!)
        
        setUpStateMachine()
        self.touristSpots = [TouristSpot]()
        setUpTouristSpots()
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    private func setUpStateMachine(){
        stateMachine = GKStateMachine(states: [SceneNormal(scene: self), SceneTourist(scene: self), ScenePassport(scene: self)])
        stateMachine!.enter(SceneNormal.self)
    }
}

//MARK: Tourist Spots
extension GameScene{
    func setUpTouristSpots(){
        let arrayPositions = [CGPoint(x: -200.0, y: -135.0),
                              CGPoint(x: -20.0, y: -77.0),
                              CGPoint(x: -100.0, y: 123.0),
                              CGPoint(x: 135.0, y: 135.0),
                              CGPoint(x: 290.0, y: -190.0)]
        var newTouristSpot: TouristSpot?
        for i in 0...3{
            newTouristSpot = TouristSpot(imageNamed: "notVisited")
            newTouristSpot?.name = "spot\(i+1)"
            newTouristSpot!.setUpSpot()
            newTouristSpot?.position = arrayPositions[i]
            self.touristSpots?.append(newTouristSpot!)
            self.addChild(self.touristSpots![i])
        }
        
    }
}

extension GameScene{
    // Detect the event in kayboard
    override func keyDown(with event: NSEvent) {
        guard let currentState = self.stateMachine?.currentState else {return}
        if currentState is SceneNormal {
            switch event.keyCode {
            case 124:
                self.character?.moveToRight()
            case 123:
                self.character?.moveToLeft()
            case 125:
               self.character?.moveToDown()
            case 126:
                self.character?.moveToUp()
            default:
                print("keyDown: \(event.characters!) keyCode: \(event.keyCode)")
            }
        }else if currentState is SceneTourist {
            switch event.keyCode {
            case 36:
                self.stateMachine?.enter(ScenePassport.self)
                break
            default:
                print("keyDown: \(event.characters!) keyCode: \(event.keyCode)")
            }
        }else{
            switch event.keyCode {
            case 53:
                self.stateMachine?.enter(SceneNormal.self)
            default:
                print("keyDown: \(event.characters!) keyCode: \(event.keyCode)")
            }
        }
    }
}
