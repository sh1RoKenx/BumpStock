//
//  Character.swift
//  BumpStock
//
//  Created by Антон Калугин on 16.06.2018.
//  Copyright © 2018 Антон Калугин. All rights reserved.
//

import SpriteKit
import GameplayKit

class Character: SKSpriteNode {
    public lazy var characterState = GKStateMachine()
    
    let movementSpeed: CGFloat = 300
    
    var lastUpdateTime: TimeInterval = 0
    var dt: TimeInterval = 0
    
    init() {
        let characterTexture = SKTexture.init(imageNamed: "character")
        super.init(texture: characterTexture, color: UIColor.clear, size: characterTexture.size())
        
        characterState = GKStateMachine(states: [Idle(character: self),
                                                 RunForward(character: self),
                                                 RunBackwards(character: self),
                                                 StrafeLeft(character: self),
                                                 StrafeRight(character: self)])
        characterState.enter(Idle.self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func tryToRunForward() {
        characterState.enter(RunForward.self)
    }
    
    func tryToRunBackwards() {
        characterState.enter(RunBackwards.self)
    }
    
    func tryToStop() {
        characterState.enter(Idle.self)
    }
    
    func tryToStrafeLeft() {
        characterState.enter(StrafeLeft.self)
    }
    
    func tryToStrafeRight() {
        characterState.enter(StrafeRight.self)
    }
}
