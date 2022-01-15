//
//  ViewController.swift
//  AnimationApp
//
//  Created by admin on 12.01.2022.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var springAnimationView: SpringView!
    @IBOutlet weak var springLabel: SpringLabel!
    
    private var animation = Animation.getRandomAnimation()

    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        
        springLabel.text = animation.description
        
        springAnimationView.animation = animation.animationName
        springAnimationView.curve = animation.animationCurve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        
        springAnimationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.animationName)", for: .normal)
    }
}

