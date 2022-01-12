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
    
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        
        let animation = Animation.getAnimation()
        
        springLabel.text = """
 Preset:\(animation.animation) \nCurve:\(animation.animationCurve) \nForce:\(String(format: "%.2f", animation.force)) \nDuration:\(String(format: "%.2f", animation.duration)) \nDelay:\(String(format: "%.2f", animation.delay))
 """
        springAnimationView.animate()
    }
    

}

