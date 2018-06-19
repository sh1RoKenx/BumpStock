//
//  CharacterMovementExtension.swift
//  BumpStock
//
//  Created by Антон Калугин on 17.06.2018.
//  Copyright © 2018 Антон Калугин. All rights reserved.
//

import SpriteKit

extension Character {
    var forwardDirection: CGPoint {
        return getDirectionFromRotation(rotation: zRotation)
    }
    
    var backwardsDirection: CGPoint {
        return getDirectionFromRotation(rotation: zRotation + CGFloat.pi)
    }
    
    var rightDirection: CGPoint {
        return getDirectionFromRotation(rotation: zRotation + CGFloat.pi/2)
    }
    
    var leftDirection: CGPoint {
        return getDirectionFromRotation(rotation: zRotation - CGFloat.pi/2)
    }
        
    private func getDirectionFromRotation(rotation: CGFloat) -> CGPoint {
        return CGPoint(x: sin(rotation), y: cos(rotation))
    }
    
    func runForward() {
        let velocity = forwardDirection * movementSpeed
        moveToVelocity(velocity)
    }
    
    func runBackwards() {
        let velocity = backwardsDirection * (movementSpeed / 2)
        moveToVelocity(velocity)
    }
    
    func strafeLeft() {
        let velocity = leftDirection * (movementSpeed * 0.75)
        moveToVelocity(velocity)
    }
    
    func strafeRight() {
        let velocity = rightDirection * (movementSpeed * 0.75)
        moveToVelocity(velocity)
    }
    
    private func moveToVelocity(_ velocity: CGPoint) {
        let amountToMove = velocity * dt
        position += amountToMove
    }
}
