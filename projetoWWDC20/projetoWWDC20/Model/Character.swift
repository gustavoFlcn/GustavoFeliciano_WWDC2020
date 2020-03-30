//
//  Character.swift
//  projetoWWDC20
//
//  Created by Gustavo Feliciano Figueiredo on 27/03/20.
//  Copyright © 2020 Gustavo Feliciano Figueiredo. All rights reserved.
//

import Foundation
import SpriteKit


class Character: SKSpriteNode{    
    private var mover: SKAction?
}

//MARK: Movments of character.
extension Character{
    // Move this nolde for a position in right of the screen
    func moveToRight(){
        switch self.position {
        case CGPoint(x: -350.0, y: 200.0):
            self.mover = SKAction.moveTo(x: -110.0, duration: 0.5)
            break
        case CGPoint(x: -110.0, y: 200.0):
            self.mover = SKAction.moveTo(y: -190.0, duration: 0.5)
            break
        case CGPoint(x: -110.0, y: -190.0):
            self.mover = SKAction.moveTo(x: 90.0, duration: 0.5)
            break
        case CGPoint(x: 90.0, y: -190.0):
            self.mover = SKAction.moveTo(y: 200.0, duration: 0.5)
            break
        case CGPoint(x: 90.0, y: 200.0):
            self.mover = SKAction.moveTo(x: 290.0, duration: 0.5)
            break
        case CGPoint(x: 290.0, y: 200.0):
            self.mover = SKAction.moveTo(y: -190.0, duration: 0.5)
            break
        default:
            break
        }
        
        if let movment = mover{
            self.run(movment)
        }
    }
    
    // Move this nolde for a position in left of the screen
    func moveToLeft(){
        switch self.position {
        case CGPoint(x: -350.0, y: 200.0):
            self.mover = SKAction.moveTo(x: -350.0, duration: 0.5)
            break
        case CGPoint(x: -110.0, y: 200.0):
            self.mover = SKAction.moveTo(x: -350.0, duration: 0.5)
            break
        case CGPoint(x: -110.0, y: -190.0):
            self.mover = SKAction.moveTo(y: 200.0, duration: 0.5)
            break
        case CGPoint(x: 90.0, y: -190.0):
            self.mover = SKAction.moveTo(x: -110.0, duration: 0.5)
            break
        case CGPoint(x: 90.0, y: 200.0):
            self.mover = SKAction.moveTo(y: -190.0, duration: 0.5)
            break
        case CGPoint(x: 290.0, y: 200.0):
            self.mover = SKAction.moveTo(x: 90.0, duration: 0.5)
            break
        default:
            break
        }
        
        if let movment = mover{
            self.run(movment)
        }
    }
}
