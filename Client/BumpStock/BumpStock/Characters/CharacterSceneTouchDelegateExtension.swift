//
//  CharacterSceneTouchDelegateExtension.swift
//  BumpStock
//
//  Created by Антон Калугин on 16.06.2018.
//  Copyright © 2018 Антон Калугин. All rights reserved.
//

import UIKit

extension Character: SceneTouchDelegate {
    func sceneTouchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let touchLocation = touch.location(in: self)
        moveBasedOnTouchLocation(touchLocation)
    }
    
    func sceneTouchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let touchLocation = touch.location(in: self)
        moveBasedOnTouchLocation(touchLocation)
    }
    
    func sceneTouchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        tryToStop()
    }
    
    func moveBasedOnTouchLocation(_ location: CGPoint) {
        let touchZoneSize = 60
        let touchCoordinate = (x: Int(location.x), y: Int(location.y))
        switch touchCoordinate {
        case (-touchZoneSize...touchZoneSize, 0...):
            tryToRunForward()
        case (-touchZoneSize...touchZoneSize, ...0):
            tryToRunBackwards()
        case (...touchZoneSize, -touchZoneSize...touchZoneSize):
            tryToStrafeLeft()
        case (touchZoneSize..., -touchZoneSize...touchZoneSize):
            tryToStrafeRight()
        default:
            tryToStop()
        }
    }
}
