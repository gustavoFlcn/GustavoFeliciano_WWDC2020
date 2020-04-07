//
//  EndGameScene.swift
//  projetoWWDC20
//
//  Created by Gustavo Feliciano Figueiredo on 07/04/20.
//  Copyright © 2020 Gustavo Feliciano Figueiredo. All rights reserved.
//

import SpriteKit

class EndGameScene: SKScene{
    var finalText: SKLabelNode?
    var studentName: SKLabelNode?
    var tutorDevName: SKLabelNode?
    var tutorDesignName: SKLabelNode?
    
    override func didMove(to view: SKView) {
        self.backgroundColor = #colorLiteral(red: 0.737254902, green: 0.6431372549, blue: 0.8196078431, alpha: 1)
        
        finalText = SKLabelNode()
        finalText?.text = "Obrigado por participar!"
        finalText?.fontSize = 40
        finalText?.fontColor = #colorLiteral(red: 1, green: 0.9058008194, blue: 0.06099093705, alpha: 1)
        finalText?.fontName = "Chalkboard SE"
        finalText?.numberOfLines = 0
        finalText?.position = CGPoint(x: 0, y: 50)
        
        studentName = SKLabelNode()
        studentName?.text = "Feito por: Gustavo Feliciano Figueiredo"
        studentName?.fontSize = 20
        studentName?.fontColor = #colorLiteral(red: 1, green: 0.9098039216, blue: 0.3137254902, alpha: 1)
        studentName?.fontName = "Chalkboard SE"
        studentName?.numberOfLines = 0
        studentName?.position = CGPoint(x: -10, y: 0)
        
        tutorDevName = SKLabelNode()
        tutorDevName?.text = "Alexandre Lucchesi"
        tutorDevName?.fontSize = 15
        tutorDevName?.fontColor = #colorLiteral(red: 1, green: 0.9098039216, blue: 0.3137254902, alpha: 1)
        tutorDevName?.fontName = "Chalkboard SE"
        tutorDevName?.numberOfLines = 0
        tutorDevName?.position = CGPoint(x: 0, y: -40)
        
        tutorDesignName = SKLabelNode()
        tutorDesignName?.text = "Felipe Carvalho"
        tutorDesignName?.fontSize = 15
        tutorDesignName?.fontColor = #colorLiteral(red: 1, green: 0.9098039216, blue: 0.3137254902, alpha: 1)
        tutorDesignName?.fontName = "Chalkboard SE"
        tutorDesignName?.numberOfLines = 0
        tutorDesignName?.position = CGPoint(x: 0, y: -20)
        
        self.addChild(finalText!)
        self.addChild(studentName!)
        self.addChild(tutorDevName!)
        self.addChild(tutorDesignName!)
    }
}
