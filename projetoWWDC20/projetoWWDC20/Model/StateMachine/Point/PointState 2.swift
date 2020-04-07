//
//  PointState.swift
//  projetoWWDC20
//
//  Created by Gustavo Feliciano Figueiredo on 31/03/20.
//  Copyright © 2020 Gustavo Feliciano Figueiredo. All rights reserved.
//

import SpriteKit
import GameplayKit

class PointState: GKState{
    unowned let touristSpot: TouristSpot
    
    init(touristPoint: TouristSpot) {
        self.touristSpot = touristPoint
    }
  
}
