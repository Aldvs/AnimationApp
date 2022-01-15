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
    
    private var animation = Animation.getAnimation()

    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        
        springLabel.text = """
 Preset:\(animation.animation) \nCurve:\(animation.animationCurve) \nForce:\(String(format: "%.2f", animation.force)) \nDuration:\(String(format: "%.2f", animation.duration)) \nDelay:\(String(format: "%.2f", animation.delay))
 """
        
        springAnimationView.animation = animation.animation
        springAnimationView.curve = animation.animationCurve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        
        springAnimationView.animate()
        
        animation = Animation.getAnimation()
        sender.setTitle("Run \(animation.animation)", for: .normal)
    }
}

