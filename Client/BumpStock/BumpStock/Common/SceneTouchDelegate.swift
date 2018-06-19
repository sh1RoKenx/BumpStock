//
//  SceneTouchDelegate.swift
//  BumpStock
//
//  Created by Антон Калугин on 16.06.2018.
//  Copyright © 2018 Антон Калугин. All rights reserved.
//

import UIKit

protocol SceneTouchDelegate {
    func sceneTouchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    func sceneTouchesMoved(_ touches: Set<UITouch>, with event: UIEvent?)
    func sceneTouchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
}

extension SceneTouchDelegate {
    func sceneTouchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    func sceneTouchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    func sceneTouchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
}
