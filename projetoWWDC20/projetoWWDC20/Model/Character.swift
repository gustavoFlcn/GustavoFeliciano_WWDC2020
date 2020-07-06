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
    var sceneGame: GameScene?
}

//MARK: Movments of character.
extension Character{
    // Move the character for RIGHT
    func moveToRight(){
        mover = nil
        if self.hasActions(){
            return
        }
        switch self.position {
        case CGPoint(x: -195.0, y: -115.0):
             self.mover = SKAction.move(to: CGPoint(x: -15.0, y: -60.0), duration: 0.5)
            break
        case CGPoint(x: -98.0, y: 140.0):
            self.mover = SKAction.move(to: CGPoint(x: 138.0, y: 155.0), duration: 0.5)
            break
        case CGPoint(x: 138.0, y: 155.0):
            self.mover = SKAction.move(to: CGPoint(x: 270, y: 60.0), duration: 0.5)
            break
        default:
            break
        }
        if let movment = mover{
            self.run(movment){
                self.sceneGame?.stateMachine?.enter(SceneTourist.self)
            }
        }
    }
    
    // Move the character for LEFT
    func moveToLeft(){
        mover = nil
        if self.hasActions(){
            return
        }
        switch self.position {
        case CGPoint(x: -15.0, y: -60.0):
            self.mover = SKAction.move(to: CGPoint(x: -195.0, y: -115.0), duration: 0.5)
            break
        case CGPoint(x: 138.0, y: 155.0):
            self.mover = SKAction.move(to: CGPoint(x: -98.0, y: 140.0), duration: 0.5)
            break
        default:
            break
        }
        if let movment = mover{
            self.run(movment){
                self.sceneGame?.stateMachine?.enter(SceneTourist.self)
            }
        }
    }
    
    // Move the character for UP
    func moveToUp(){
        mover = nil
        if self.hasActions(){
            return
        }
        switch self.position {
        case CGPoint(x: -195.0, y: -115.0):
            self.mover = SKAction.move(to: CGPoint(x: -300, y: 100), duration: 0.5)
            break
        case CGPoint(x: -15.0, y: -60.0):
            self.mover = SKAction.move(to: CGPoint(x: -98.0, y: 140.0), duration: 0.5)
            break
        default:
            break
        }
        if let movment = mover{
            self.run(movment){
               if self.position != CGPoint(x: -300, y: 100){
                    self.sceneGame?.stateMachine?.enter(SceneTourist.self)
                }
            }
        }
    }
    
    // Move the character for DOWN
    func moveToDown(){
        mover = nil
        if self.hasActions(){
            return
        }
        switch self.position {
        case CGPoint(x: -300, y: 100):
            self.mover = SKAction.move(to: CGPoint(x: -195.0, y: -115.0), duration: 0.5)
            break
        case CGPoint(x: -98.0, y: 140.0):
            self.mover = SKAction.move(to: CGPoint(x: -15.0, y: -60.0), duration: 0.5)
            break
        default:
            break
        }
        if let movment = mover{
            self.run(movment){
                if self.position != CGPoint(x: -300, y: 100){
                    self.sceneGame?.stateMachine?.enter(SceneTourist.self)
                }
            }
        }
    }
}
