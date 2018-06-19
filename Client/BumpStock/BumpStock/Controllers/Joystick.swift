//
//  Joystick.swift
//  BumpStock
//
//  Created by Антон Калугин on 18.06.2018.
//  Copyright © 2018 Антон Калугин. All rights reserved.
//

import SpriteKit

class Joystick: SKSpriteNode {
    let innerCircle: SKShapeNode
    let outerCircle: SKShapeNode
    
    init() {
        innerCircle = SKShapeNode(circleOfRadius: universalInterfaceDP * 3)
        outerCircle = SKShapeNode(circleOfRadius: universalInterfaceDP * 4.5)
        
        super.init(texture: SKTexture(), color: SKColor.clear, size: CGSize.zero)
        
        innerCircle.fillColor = SKColor.red
        outerCircle.fillColor = SKColor.blue
        outerCircle.alpha = 0.5
        
        outerCircle.addChild(innerCircle)
        addChild(outerCircle)
        
        isUserInteractionEnabled = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touched")
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
}
