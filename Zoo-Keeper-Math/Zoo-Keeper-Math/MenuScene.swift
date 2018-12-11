//
//  MenuScene.swift
//  Zoo-Keeper-Math
//
//  Created by MacAir23 on 12/10/18.
//  Copyright © 2018 Ricardo Rodriguez. All rights reserved.
//

import SpriteKit

class MenuScene: SKScene {
    var newGameButtonNode:SKSpriteNode!
    
    override func didMove(to view: SKView) {
        newGameButtonNode = self.childNode(withName: "playButton") as! SKSpriteNode!
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        
        if let location = touch?.location(in: self) {
            let nodesArray = self.nodes(at: location)
            
            if nodesArray.first?.name == "playButton" {
                print("test")
                let transition = SKTransition.flipHorizontal(withDuration: 0.5)
                if let gameScene = SKScene(fileNamed: "GameScene") {
                    gameScene.scaleMode = .aspectFill
                    view?.presentScene(gameScene, transition: transition)
                }
            }
        }
    }
    
    
}
