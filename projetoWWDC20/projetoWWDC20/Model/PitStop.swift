//
//  PitStop.swift
//  projetoWWDC20
//
//  Created by Gustavo Feliciano Figueiredo on 30/03/20.
//  Copyright © 2020 Gustavo Feliciano Figueiredo. All rights reserved.
//

import Cocoa
import SpriteKit
import GameplayKit


class PitStop: SKSpriteNode {
    var stateMachine: PitStopStateMachine

    init() {
        stateMachine = PitStopStateMachine(states: [])
        super.init(texture: .none, color: .clear, size: .zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
