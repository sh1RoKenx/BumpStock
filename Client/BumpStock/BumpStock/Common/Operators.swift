//
//  Operators.swift
//  BumpStock
//
//  Created by Антон Калугин on 17.06.2018.
//  Copyright © 2018 Антон Калугин. All rights reserved.
//

import SpriteKit

func * (point: CGPoint, scalar: CGFloat) -> CGPoint {
    return CGPoint(x: point.x * scalar, y: point.y * scalar)
}

func *= (point: inout CGPoint, scalar: CGFloat) {
    point = point * scalar
}

func * (point: CGPoint, scalar: Double) -> CGPoint {
    return point * CGFloat(scalar)
}

func *= (point: inout CGPoint, scalar: Double) {
    point *= CGFloat(scalar)
}

func * (point: CGPoint, scalar: Int) -> CGPoint {
    return point * CGFloat(scalar)
}

func *= (point: inout CGPoint, scalar: Int) {
    point *= CGFloat(scalar)
}

func + (point: CGPoint, scalar: CGFloat) -> CGPoint {
    return CGPoint(x: point.x + scalar, y: point.y + scalar)
}

func += (point: inout CGPoint, scalar: CGFloat) {
    point = point + scalar
}

func + (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x + right.x, y: left.y + right.y)
}

func += (left: inout CGPoint, right: CGPoint) {
    left = left + right
}
