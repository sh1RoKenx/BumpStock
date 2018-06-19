//
//  GameSceneUpdateExtension.swift
//  BumpStock
//
//  Created by Антон Калугин on 16.06.2018.
//  Copyright © 2018 Антон Калугин. All rights reserved.
//

import SpriteKit

extension GameScene {
    override func update(_ currentTime: TimeInterval) {
        delegateUpdate(currentTime)
        
        updateCamera()
    }
    
    func delegateUpdate(_ currentTime: TimeInterval) {
        enumerateChildNodes(withName: "//*") { node, _ in
            if let sceneUpdateDelegateNode = node as? SceneUpdateDelegate {
                sceneUpdateDelegateNode.update(currentTime)
            }
        }
    }
    
    func updateCamera() {
        let cameraPosition = CGPoint(x: character.position.x, y: character.position.y + character.forwardDirection.y * 300)
        cameraNode.position = cameraPosition
        cameraNode.zRotation = character.zRotation
    }
}
