//
//  ViewController.swift
//  CircularProgresRing
//
//  Created by Ruslan Liulka on 12.08.2022.
//

import UIKit
import UICircularProgressRing
import NVActivityIndicatorView

class ViewController: UIViewController {
    
    @IBOutlet weak var indicatorView: NVActivityIndicatorView!
    
    @IBOutlet weak var secondIndecatorView: NVActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        addRing()
        addAnoutherRing()
        indicatorView.type = .pacman
        indicatorView.color = .systemGreen
        indicatorView.startAnimating()
        
        secondIndecatorView.type = .ballScaleRippleMultiple
        secondIndecatorView.color = .orange
        secondIndecatorView.startAnimating()
        
     
        // Do any additional setup after loading the view.
    }
    
    func addRing() {
        let info = CGRect(x: 100, y: 120, width: 150, height: 150)
        let progressRing = UICircularProgressRing(frame: info)
        progressRing.maxValue = 100
        progressRing.innerRingColor = .red
        
        view.addSubview(progressRing)
        
        progressRing.value = 42
        progressRing.animationTimingFunction = .linear
        
    }
    
    func addAnoutherRing() {
        let ring = CGRect(x: view.bounds.midX, y: view.bounds.midY, width: view.frame.width / 2, height: view.frame.width / 2)
        let someRing = UICircularProgressRing(frame: ring)
        someRing.maxValue = 8
        someRing.innerRingColor = .orange
        someRing.value = 2
        someRing.animationTimingFunction = .default
        someRing.center = view.center
        
        view.addSubview(someRing)
    }


}

