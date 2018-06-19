//
//  StrafeRight.swift
//  BumpStock
//
//  Created by Антон Калугин on 16.06.2018.
//  Copyright © 2018 Антон Калугин. All rights reserved.
//

import SpriteKit
import GameplayKit

class StrafeRight: CharacterState {
    override func didEnter(from previousState: GKState?) {
        print("strafe right")
    }
    
    override func update(deltaTime seconds: TimeInterval) {
        character.strafeRight()
    }
    
    override func isValidNextState(_ stateClass: AnyClass) -> Bool {
        return stateClass is Idle.Type || stateClass is RunForward.Type || stateClass is RunBackwards.Type || stateClass is StrafeLeft.Type
    }
}
