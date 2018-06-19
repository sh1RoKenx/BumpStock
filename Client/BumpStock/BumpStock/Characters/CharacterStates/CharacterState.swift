//
//  CharacterState.swift
//  BumpStock
//
//  Created by Антон Калугин on 16.06.2018.
//  Copyright © 2018 Антон Калугин. All rights reserved.
//

import SpriteKit
import GameplayKit

class CharacterState: GKState {
    unowned let character: Character
    
    init (character: Character) {
        self.character = character
    }
}
