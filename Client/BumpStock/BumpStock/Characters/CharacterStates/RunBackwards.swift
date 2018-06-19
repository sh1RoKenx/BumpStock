//
//  RunBackwards.swift
//  BumpStock
//
//  Created by Антон Калугин on 16.06.2018.
//  Copyright © 2018 Антон Калугин. All rights reserved.
//

import SpriteKit
import GameplayKit

class RunBackwards: CharacterState {
    override func didEnter(from previousState: GKState?) {
        print("run backwards")
    }
    
    override func update(deltaTime seconds: TimeInterval) {
        character.runBackwards()
    }
    
    override func isValidNextState(_ stateClass: AnyClass) -> Bool {
        return stateClass is Idle.Type || stateClass is RunForward.Type || stateClass is StrafeLeft.Type || stateClass is StrafeRight.Type
    }
}
