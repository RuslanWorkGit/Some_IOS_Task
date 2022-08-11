//
//  ViewController.swift
//  FrameAndBounds
//
//  Created by Ruslan Liulka on 11.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myImage: UIImageView!
    
    //Lables
    @IBOutlet weak var frameX: UILabel!
    @IBOutlet weak var frameY: UILabel!
    @IBOutlet weak var frameWidth: UILabel!
    @IBOutlet weak var frameHeight: UILabel!
    @IBOutlet weak var boundsX: UILabel!
    @IBOutlet weak var boundsY: UILabel!
    @IBOutlet weak var boundsWidth: UILabel!
    @IBOutlet weak var boundsHeight: UILabel!
    @IBOutlet weak var centerX: UILabel!
    @IBOutlet weak var centerY: UILabel!
    @IBOutlet weak var rotation: UILabel!
    
    //Sliders
    @IBOutlet weak var frameXSlider: UISlider!
    @IBOutlet weak var frameYSlider: UISlider!
    @IBOutlet weak var frameWidthSlider: UISlider!
    @IBOutlet weak var frameHeightSlider: UISlider!
    @IBOutlet weak var boundsXSlider: UISlider!
    @IBOutlet weak var boundsYSlider: UISlider!
    @IBOutlet weak var boundsWidthSlider: UISlider!
    @IBOutlet weak var boundsHeightSlider: UISlider!
    @IBOutlet weak var centerXSlider: UISlider!
    @IBOutlet weak var centerYSlider: UISlider!
    @IBOutlet weak var rotationSlidder: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func frameXSliderChange(_ sender: Any) {
        myImage.frame.origin.x = CGFloat(frameXSlider.value)
        updateLabels()
    }
    
    @IBAction func frameYSliderChange(_ sender: Any) {
        myImage.frame.origin.y = CGFloat(frameYSlider.value)
        updateLabels()
    }
    
    @IBAction func frameWidthSliderChange(_ sender: Any) {
        myImage.frame.size.width = CGFloat(frameWidthSlider.value)
        updateLabels()
    }
    
    @IBAction func frameHeightSliderChange(_ sender: Any) {
        myImage.frame.size.height = CGFloat(frameHeightSlider.value)
        updateLabels()
    }
    
    @IBAction func boundsXSliderChange(_ sender: Any) {
        myImage.bounds.origin.x = CGFloat(boundsXSlider.value)
        updateLabels()
    }
    
    @IBAction func boundsYSliderChange(_ sender: Any) {
        myImage.bounds.origin.y = CGFloat(boundsYSlider.value)
        updateLabels()
    }
    
    @IBAction func boundsWidthSliderChange(_ sender: Any) {
        myImage.bounds.size.width = CGFloat(boundsWidthSlider.value)
        updateLabels()
    }
    
    @IBAction func boundsHeightSliderChange(_ sender: Any) {
        myImage.bounds.size.height = CGFloat(boundsHeightSlider.value)
        updateLabels()
    }
    
    @IBAction func centerXSliderChange(_ sender: Any) {
        myImage.center.x = CGFloat(centerXSlider.value)
        updateLabels()
    }
    
    @IBAction func centerYSliderChange(_ sender: Any) {
        myImage.center.y = CGFloat(centerYSlider.value)
        updateLabels()
    }
    
    @IBAction func rotationSliderChange(_ sender: Any) {
        let rotation = CGAffineTransform(rotationAngle: CGFloat(rotationSlidder.value))
                myImage.transform = rotation
                updateLabels()
    }
    
    private func updateLabels() {
     
            frameX.text = "frame x = \(Int(myImage.frame.origin.x))"
            frameY.text = "frame y = \(Int(myImage.frame.origin.y))"
            frameWidth.text = "frame width = \(Int(myImage.frame.width))"
            frameHeight.text = "frame height = \(Int(myImage.frame.height))"
            boundsX.text = "bounds x = \(Int(myImage.bounds.origin.x))"
            boundsY.text = "bounds y = \(Int(myImage.bounds.origin.y))"
            boundsWidth.text = "bounds width = \(Int(myImage.bounds.width))"
            boundsHeight.text = "bounds height = \(Int(myImage.bounds.height))"
            centerX.text = "center x = \(Int(myImage.center.x))"
            centerY.text = "center y = \(Int(myImage.center.y))"
            rotation.text = "rotation = \((rotationSlidder.value))"
     
        }
}

