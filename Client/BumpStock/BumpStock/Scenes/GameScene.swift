//
//  GameScene.swift
//  BumpStock
//
//  Created by Антон Калугин on 15.06.2018.
//  Copyright © 2018 Антон Калугин. All rights reserved.
//

import SpriteKit
import GameplayKit
import UIKit

class GameScene: SKScene {
    let character = Character()
    let cameraNode = SKCameraNode()
    
    override func didMove(to view: SKView) {
        setupCharacter()
        setupCamera()
        setupJoystick()
    }
    
    func setupCharacter() {
        addChild(character)
    }
    
    func setupCamera() {
        cameraNode.setScale(universalAspectRatio / 1.5);
        addChild(cameraNode)
        camera = cameraNode
    }
    
    func setupJoystick() {
        let joystick = Joystick()
        camera!.addChild(joystick)
        let bottomLeftCorner = getCorner(.bottomLeft, forScene: self)
        let joystickPosition = bottomLeftCorner + universalInterfaceDP * 6
        
        joystick.position = joystickPosition
        print("joystick added to position \(joystick.position)")
    }
}
