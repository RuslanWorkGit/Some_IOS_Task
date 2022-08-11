//
//  SecondViewController.swift
//  BasicAnimation
//
//  Created by Ruslan Liulka on 11.08.2022.
//

import UIKit

class SecondViewController: UIViewController {

    let layer = CALayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()


        layer.backgroundColor = UIColor.red.cgColor
        layer.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        view.layer.addSublayer(layer)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.animateMovement()
            self.animateOpacity()

        }
    }
    
    func animateMovement() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.fromValue = CGPoint(x: layer.frame.origin.x + (layer.frame.size.width/2),
                                      y: layer.frame.origin.y + (layer.frame.size.height/2))
        animation.toValue = CGPoint(x: 300, y: 400)
        animation.duration = 2
        //animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName)
        animation.fillMode = .forwards
        animation.isRemovedOnCompletion = false
        animation.beginTime = CACurrentMediaTime()
        layer.add(animation, forKey: nil)
    }
    
    func animateOpacity() {
        let animation = CABasicAnimation(keyPath: "opacity")
        animation.fromValue = 1
        animation.toValue = 0
        animation.duration = 3
        animation.fillMode = .forwards
        animation.isRemovedOnCompletion = false
        animation.beginTime = CACurrentMediaTime()
        layer.add(animation, forKey: nil)
    }


}
