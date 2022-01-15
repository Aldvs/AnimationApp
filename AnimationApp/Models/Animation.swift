//
//  DataManager.swift
//  AnimationApp
//
//  Created by admin on 12.01.2022.
//

import UIKit

struct Animation {
    
    let animationName: String
    let animationCurve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
    var description: String {
        """
        preset: \(animationName)
        curve: \(animationCurve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            animationName: DataManager.shared.animations.randomElement()?.rawValue ?? "pop",
            animationCurve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: CGFloat.random(in: 0...1),
            duration: CGFloat.random(in: 0...1),
            delay: CGFloat.random(in: 0...1))
    }
}
