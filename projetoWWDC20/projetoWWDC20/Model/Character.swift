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
    
    // Move the character for RIGHT
    func moveToRight(){
        switch self.position {
        case CGPoint(x: -200.0, y: -135.0):
             self.mover = SKAction.move(to: CGPoint(x: -20.0, y: -77.0), duration: 0.5)
            break
        case CGPoint(x: -100.0, y: 123.0):
            self.mover = SKAction.move(to: CGPoint(x: 135.0, y: 135.0), duration: 0.5)
            break
        case CGPoint(x: 135.0, y: 135.0):
            self.mover = SKAction.move(to: CGPoint(x: -20.0, y: -77.0), duration: 0.5)
            break
        default:
            break
        }
        if let movment = mover{
            self.run(movment)
        }
    }
    
    // Move the character for LEFT
    func moveToLeft(){
        switch self.position {
        case CGPoint(x: -20.0, y: -77.0):
            self.mover = SKAction.move(to: CGPoint(x: -200.0, y: -135.0), duration: 0.5)
            break
        case CGPoint(x: 135.0, y: 135.0):
            self.mover = SKAction.move(to: CGPoint(x: -100.0, y: 123.0), duration: 0.5)
            break
        default:
            break
        }
        if let movment = mover{
            self.run(movment)
        }
    }
    
    // Move the character for UP
    func moveToUp(){
        switch self.position {
        case CGPoint(x: -200.0, y: -135.0):
            self.mover = SKAction.move(to: CGPoint(x: -303, y: 80), duration: 0.5)
            break
        case CGPoint(x: -20.0, y: -77.0):
            self.mover = SKAction.move(to: CGPoint(x: -100.0, y: 123.0), duration: 0.5)
            break
        default:
            break
        }
        if let movment = mover{
            self.run(movment)
        }
    }
    
    // Move the character for DOWN
    func moveToDown(){
        switch self.position {
        case CGPoint(x: -303, y: 80):
            self.mover = SKAction.move(to: CGPoint(x: -200.0, y: -135.0), duration: 0.5)
            break
        case CGPoint(x: -100.0, y: 123.0):
            self.mover = SKAction.move(to: CGPoint(x: -20.0, y: -77.0), duration: 0.5)
            break
        default:
            break
        }
        if let movment = mover{
            self.run(movment)
        }
    }
    
}
