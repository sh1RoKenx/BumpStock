//
//  GameSceneTouchesExtension.swift
//  BumpStock
//
//  Created by Антон Калугин on 16.06.2018.
//  Copyright © 2018 Антон Калугин. All rights reserved.
//

import SpriteKit

extension GameScene {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        delegateTouchesBegan(touches, with: event)
    }
    
    func delegateTouchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        enumerateChildNodes(withName: "//*") { node, _ in
            if let sceneTouchDelegateNode = node as? SceneTouchDelegate {
                sceneTouchDelegateNode.sceneTouchesBegan(touches, with: event)
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        delegateTouchesMoved(touches, with: event)
    }
    
    func delegateTouchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        enumerateChildNodes(withName: "//*") { node, _ in
            if let sceneTouchDelegateNode = node as? SceneTouchDelegate {
                sceneTouchDelegateNode.sceneTouchesMoved(touches, with: event)
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        delegateTouchesEnded(touches, with: event)
    }
    
    func delegateTouchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        enumerateChildNodes(withName: "//*") { node, _ in
            if let sceneTouchDelegateNode = node as? SceneTouchDelegate {
                sceneTouchDelegateNode.sceneTouchesEnded(touches, with: event)
            }
        }
    }
}
