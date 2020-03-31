//
//  PitStop.swift
//  projetoWWDC20
//
//  Created by Gustavo Feliciano Figueiredo on 30/03/20.
//  Copyright © 2020 Gustavo Feliciano Figueiredo. All rights reserved.
//
import SpriteKit
import GameplayKit


class TouristSpot: SKSpriteNode{
    
    private var stateMachine: GKStateMachine?
    
    func setUpSpot(){
        self.position = CGPoint(x: 0, y: 0)
        self.size = CGSize(width: 50, height: 50)
        self.zPosition = 1
        self.setUpStateMachine()
    }
    
    private func setUpStateMachine(){
        stateMachine = GKStateMachine(states: [Visited(touristPoint: self), NotVisited(touristPoint: self)])
        stateMachine!.enter(Visited.self)
    }
}
