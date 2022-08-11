//
//  ViewController.swift
//  BasicAnimation
//
//  Created by Ruslan Liulka on 11.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let myView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .link
        
    }
    
    @IBAction func didTapButton() {
        
        //let vc = FirstViewController()
        
        
//        let vc = storyboard?.instantiateViewController(withIdentifier: "FirstViewController")
//
//        guard let nextSt = vc else {
//            print("nil")
//            return
//        }
//        present(nextSt, animated: true)
        
        
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "FirstViewController") as? FirstViewController else{
            print("")
            return
        }
    
        present(vc, animated: true)
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
        myButton.addTarget(self, action: #selector(animate), for: .touchUpInside)
        view.addSubview(myButton)
    }

    @objc func animate(){
//        UIView.animate(withDuration: 0.3, animations: {
//            //self.myView.alpha = 0
//            self.myView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
//            //self.myView.center = self.view.center
        UIView.animate(withDuration: 1, animations: {
            self.myView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
            self.myView.center = self.view.center
        }, completion: {done in
            if done {
                UIView.animate(withDuration: 1, animations: {
                    self.myView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
                    self.myView.center = self.view.center
                })
        }
        })
    }

}

