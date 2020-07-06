//
//  Passport.swift
//  projetoWWDC20
//
//  Created by Gustavo Feliciano Figueiredo on 07/04/20.
//  Copyright © 2020 Gustavo Feliciano Figueiredo. All rights reserved.
//

import GameplayKit
import SpriteKit

class Passport: SKSpriteNode {
    var stickerIgrejinha: SKSpriteNode
    var stickerSantuario: SKSpriteNode
    var stickerRuaAlegria: SKSpriteNode
    var stickerFeira: SKSpriteNode
    var stickerMinhaCasa: SKSpriteNode
    
    override init(texture: SKTexture?, color: NSColor, size: CGSize) {
        self.stickerIgrejinha = SKSpriteNode(imageNamed: "igrejinhaSticker")
        self.stickerIgrejinha.anchorPoint = CGPoint(x: 0.5, y: 0.50)
        self.stickerIgrejinha.position = CGPoint(x: -80, y: -50)
        self.stickerIgrejinha.setScale(0.3)
        self.stickerIgrejinha.alpha = 0
        
        self.stickerSantuario = SKSpriteNode(imageNamed: "santuarioSticker")
        self.stickerSantuario.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        self.stickerSantuario.position = CGPoint(x: 25, y: -90)
        self.stickerSantuario.setScale(0.3)
        self.stickerSantuario.alpha = 0
        
        self.stickerRuaAlegria = SKSpriteNode(imageNamed: "ruaAlegria")
        self.stickerRuaAlegria.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        self.stickerRuaAlegria.position = CGPoint(x: -100, y: -150)
        self.stickerRuaAlegria.setScale(0.3)
        self.stickerRuaAlegria.alpha = 0

        self.stickerFeira = SKSpriteNode(imageNamed: "feira")
        self.stickerFeira.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        self.stickerFeira.position = CGPoint(x: 95, y: -50)
        self.stickerFeira.setScale(0.3)
        self.stickerFeira.alpha = 0
        
        self.stickerMinhaCasa = SKSpriteNode(imageNamed: "minhaCasa")
        self.stickerMinhaCasa.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        self.stickerMinhaCasa.position = CGPoint(x: 105, y: -160)
        self.stickerMinhaCasa.setScale(0.3)
        self.stickerMinhaCasa.alpha = 0
        
        super.init(texture: texture, color: color, size: size)
        self.addChild(stickerIgrejinha)
        self.addChild(stickerSantuario)
        self.addChild(stickerRuaAlegria)
        self.addChild(stickerFeira)
        self.addChild(stickerMinhaCasa)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
