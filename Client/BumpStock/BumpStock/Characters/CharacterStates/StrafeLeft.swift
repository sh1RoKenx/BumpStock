//
//  StrafeLeft.swift
//  BumpStock
//
//  Created by Антон Калугин on 16.06.2018.
//  Copyright © 2018 Антон Калугин. All rights reserved.
//

import SpriteKit
import GameplayKit

class StrafeLeft: CharacterState {
    override func didEnter(from previousState: GKState?) {
        print("strafe left")
    }
    
    override func update(deltaTime seconds: TimeInterval) {
        character.strafeLeft()
    }
    
    override func isValidNextState(_ stateClass: AnyClass) -> Bool {
        return stateClass is Idle.Type || stateClass is RunForward.Type || stateClass is RunBackwards.Type || stateClass is StrafeRight.Type
    }
}
