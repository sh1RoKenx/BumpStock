//
//  DeviceManagement.swift
//  BumpStock
//
//  Created by Антон Калугин on 19.06.2018.
//  Copyright © 2018 Антон Калугин. All rights reserved.
//

import SpriteKit

enum Corner {
    case topLeft
    case topRight
    case bottomLeft
    case bottomRight
}

let universalAspectRatio = CGFloat(812/375) / (UIScreen.main.bounds.height / UIScreen.main.bounds.width) * 0.1
let universalInterfaceDP = UIScreen.main.bounds.width / 10

func getCorner (_ corner: Corner, forScene scene: SKScene) -> CGPoint {
    var cornerPointInScene = CGPoint()
    
    let aspectRatio: CGFloat = UIScreen.main.bounds.width / UIScreen.main.bounds.height
    let playableHeight = scene.size.width / aspectRatio
    let playableMargin = (scene.size.height - playableHeight) / 2
    
    switch corner {
    case .bottomLeft:
        cornerPointInScene = CGPoint(x: 0, y: 0 + playableMargin)
    case .bottomRight:
        cornerPointInScene = CGPoint(x: scene.size.width, y: 0 + playableMargin)
    case .topLeft:
        cornerPointInScene = CGPoint(x: 0, y: scene.size.height - playableMargin)
    case .topRight:
        cornerPointInScene = CGPoint(x: scene.size.width, y: scene.size.height - playableMargin)
    }
    
    let cornerPointInCameraNode = CGPoint(x: cornerPointInScene.x - scene.size.width/2, y: cornerPointInScene.y - scene.size.height/2)
    return cornerPointInCameraNode
}
