//
//  GameScene.swift
//  actividad14_JHC
//
//  Created by Francisco Hernandez Ayala on 12/05/21.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    let fondo = SKSpriteNode(imageNamed: "fondo2")
    let nave = SKSpriteNode(imageNamed: "Spaceship")
    
    override func didMove(to view: SKView) {
        fondo.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
        nave.position = CGPoint(x: 0, y: -200)
        nave.size = CGSize(width: 90, height: 90)
        fondo.zPosition = -1
        
        addChild(fondo)
        fondo.addChild(nave)
        }
        
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        nave.run(SKAction.move(to: CGPoint(x: 0, y: fondo.size.height), duration: 8))
        self.nave.position = CGPoint.zero
    }
    override func update(_ currentTime: TimeInterval) {
        nave.position = CGPoint(x: 0, y: -200)
    }
    
}
