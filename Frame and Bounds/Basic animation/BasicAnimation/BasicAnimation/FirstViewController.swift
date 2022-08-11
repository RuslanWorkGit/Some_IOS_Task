//
//  FirstViewController.swift
//  BasicAnimation
//
//  Created by Ruslan Liulka on 11.08.2022.
//

import UIKit

class FirstViewController: UIViewController {
    
    let myView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myView.backgroundColor = .red
        myView.center = view.center
        view.addSubview(myView)
        
        let myButton = UIButton(frame: CGRect(x: (view.frame.size.width - 200) / 2, y: view.frame.size.height - 220, width: 200, height: 80))
        myButton.backgroundColor = .black
        myButton.setTitleColor(.white, for: .normal)
        myButton.setTitle("Start", for: .normal)
        myButton.addTarget(self, action: #selector(animates), for: .touchUpInside)
        view.addSubview(myButton)
    }
    
    @objc func animates(){
        UIView.animate(withDuration: 1, animations: {
            self.myView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
            self.myView.center = self.view.center
        }, completion: {done in
            if done {
                self.shrink()
            }
        })
    }
    
    func shrink() {
        UIView.animate(withDuration: 1, animations: {
            self.myView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
            self.myView.center = self.view.center
        }, completion: {done in
                self.animates()
        })
    }
}


 
