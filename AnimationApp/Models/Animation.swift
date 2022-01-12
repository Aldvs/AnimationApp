//
//  DataManager.swift
//  AnimationApp
//
//  Created by admin on 12.01.2022.
//

import Spring

struct Animation {
    
    let animation: Spring.AnimationPreset
    let animationCurve: Spring.AnimationCurve
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat

}

extension Animation {
    
    static func getAnimation() -> Animation {
        
        let animations = Spring.AnimationPreset.allCases.randomElement()
        let curves = Spring.AnimationCurve.allCases.randomElement()
        
        guard let chosenAnimation = animations,
              let chosenCurve = curves else {
            return Animation(animation: .fadeIn, animationCurve: .easeIn, force: 1, duration: 1, delay: 1)
        }
        
        let ourAnimation = Animation(
            animation: chosenAnimation,
            animationCurve: chosenCurve,
            force: CGFloat.random(in: 0...1),
            duration: CGFloat.random(in: 0...1),
            delay: CGFloat.random(in: 0...1))
        return ourAnimation
    }
}
