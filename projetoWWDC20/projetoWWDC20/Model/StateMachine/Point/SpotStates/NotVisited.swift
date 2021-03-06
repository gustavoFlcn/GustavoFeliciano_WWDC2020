//
//  NotVisited.swift
//  projetoWWDC20
//
//  Created by Gustavo Feliciano Figueiredo on 31/03/20.
//  Copyright © 2020 Gustavo Feliciano Figueiredo. All rights reserved.
//

import SpriteKit
import GameplayKit

class NotVisited: PointState{
    override func isValidNextState(_ stateClass: AnyClass) -> Bool {
        return stateClass is Visited.Type
    }
    
    override func didEnter(from previousState: GKState?) {
        self.touristSpot.texture = SKTexture(imageNamed: "notVisited")
    }
}
