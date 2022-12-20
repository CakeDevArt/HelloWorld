//
//  ViewController.swift
//  HelloWorld
//
//  Created by Daniel on 12.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redTrafficLightView: UIView!
    @IBOutlet weak var yellowTrafficLightView: UIView!
    @IBOutlet weak var greenTrafficLightView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redTrafficLightView.layer.cornerRadius = redTrafficLightView.frame.height / 2
        redTrafficLightView.backgroundColor = UIColor.red.withAlphaComponent(0.3)
        yellowTrafficLightView.layer.cornerRadius = yellowTrafficLightView.frame.height / 2
        yellowTrafficLightView.backgroundColor = UIColor.yellow.withAlphaComponent(0.3)
        greenTrafficLightView.layer.cornerRadius = greenTrafficLightView.frame.height / 2
        greenTrafficLightView.backgroundColor = UIColor.green.withAlphaComponent(0.3)
        startButton.layer.cornerRadius = 15
    }

    @IBAction func startButtonTapped() {
        if redTrafficLightView.backgroundColor == UIColor.red.withAlphaComponent(0.3) &&
            yellowTrafficLightView.backgroundColor == UIColor.yellow.withAlphaComponent(0.3) &&
            greenTrafficLightView.backgroundColor == UIColor.green.withAlphaComponent(0.3) {
            
            redTrafficLightView.backgroundColor = UIColor.red.withAlphaComponent(1.0)
            startButton.setTitle("Next", for: .normal)
        } else if redTrafficLightView.backgroundColor == UIColor.red.withAlphaComponent(1.0) &&
                    yellowTrafficLightView.backgroundColor == UIColor.yellow.withAlphaComponent(0.3) &&
                    greenTrafficLightView.backgroundColor == UIColor.green.withAlphaComponent(0.3) {
            
            redTrafficLightView.backgroundColor = UIColor.red.withAlphaComponent(0.3)
            yellowTrafficLightView.backgroundColor = UIColor.yellow.withAlphaComponent(1.0)
        } else if redTrafficLightView.backgroundColor == UIColor.red.withAlphaComponent(0.3) &&
                    yellowTrafficLightView.backgroundColor == UIColor.yellow.withAlphaComponent(1.0) &&
                    greenTrafficLightView.backgroundColor == UIColor.green.withAlphaComponent(0.3) {
            
            yellowTrafficLightView.backgroundColor = UIColor.yellow.withAlphaComponent(0.3)
            greenTrafficLightView.backgroundColor = UIColor.green.withAlphaComponent(1.0)
        } else if redTrafficLightView.backgroundColor == UIColor.red.withAlphaComponent(0.3) &&
                    yellowTrafficLightView.backgroundColor == UIColor.yellow.withAlphaComponent(0.3) &&
                    greenTrafficLightView.backgroundColor == UIColor.green.withAlphaComponent(1.0) {
            
            redTrafficLightView.backgroundColor = UIColor.red.withAlphaComponent(1.0)
            greenTrafficLightView.backgroundColor = UIColor.green.withAlphaComponent(0.3)
        }
    }
}
        
    

