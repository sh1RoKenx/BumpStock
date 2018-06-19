//
//  CharacterSceneUpdateDelegateExtension.swift
//  BumpStock
//
//  Created by Антон Калугин on 16.06.2018.
//  Copyright © 2018 Антон Калугин. All rights reserved.
//
import SpriteKit

extension Character: SceneUpdateDelegate {
    func update(_ currentTime: TimeInterval) {
        handleFrames(currentTime)
        characterState.update(deltaTime: dt)
    }
    
    func handleFrames(_ currentTime: TimeInterval) {
        if lastUpdateTime > 0 {
            dt = currentTime - lastUpdateTime
        } else {
            dt = 0
        }
        lastUpdateTime = currentTime
    }
}
