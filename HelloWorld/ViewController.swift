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
        redTrafficLightView.layer.cornerRadius = 60
        redTrafficLightView.backgroundColor = #colorLiteral(red: 0.5527142397, green: 0.1346355199, blue: 0.1346355199, alpha: 1)
        yellowTrafficLightView.layer.cornerRadius = 60
        yellowTrafficLightView.backgroundColor = #colorLiteral(red: 0.5435929446, green: 0.5262179572, blue: 0.2287210027, alpha: 1)
        greenTrafficLightView.layer.cornerRadius = 60
        greenTrafficLightView.backgroundColor = #colorLiteral(red: 0.09598759765, green: 0.5079333119, blue: 0.2253593592, alpha: 1)
        startButton.layer.cornerRadius = 15
    }

    @IBAction func startButtonTapped() {
        if redTrafficLightView.backgroundColor == #colorLiteral(red: 0.5527142397, green: 0.1346355199, blue: 0.1346355199, alpha: 1) && yellowTrafficLightView.backgroundColor == #colorLiteral(red: 0.5435929446, green: 0.5262179572, blue: 0.2287210027, alpha: 1) && greenTrafficLightView.backgroundColor == #colorLiteral(red: 0.09598759765, green: 0.5079333119, blue: 0.2253593592, alpha: 1) {
            redTrafficLightView.backgroundColor = #colorLiteral(red: 1, green: 0.2435897436, blue: 0.2435897436, alpha: 1)
            startButton.setTitle("Next", for: .normal)
        } else if redTrafficLightView.backgroundColor == #colorLiteral(red: 1, green: 0.2435897436, blue: 0.2435897436, alpha: 1) && yellowTrafficLightView.backgroundColor == #colorLiteral(red: 0.5435929446, green: 0.5262179572, blue: 0.2287210027, alpha: 1) && greenTrafficLightView.backgroundColor == #colorLiteral(red: 0.09598759765, green: 0.5079333119, blue: 0.2253593592, alpha: 1) {
            redTrafficLightView.backgroundColor = #colorLiteral(red: 0.5527142397, green: 0.1346355199, blue: 0.1346355199, alpha: 1)
            yellowTrafficLightView.backgroundColor = #colorLiteral(red: 0.9706829897, green: 0.9391655999, blue: 0.4046222146, alpha: 1)
        } else if redTrafficLightView.backgroundColor == #colorLiteral(red: 0.5527142397, green: 0.1346355199, blue: 0.1346355199, alpha: 1) && yellowTrafficLightView.backgroundColor == #colorLiteral(red: 0.9706829897, green: 0.9391655999, blue: 0.4046222146, alpha: 1) && greenTrafficLightView.backgroundColor == #colorLiteral(red: 0.09598759765, green: 0.5079333119, blue: 0.2253593592, alpha: 1) {
            yellowTrafficLightView.backgroundColor = #colorLiteral(red: 0.5435929446, green: 0.5262179572, blue: 0.2287210027, alpha: 1)
            greenTrafficLightView.backgroundColor = #colorLiteral(red: 0.1722537255, green: 0.9449097939, blue: 0.414533877, alpha: 1)
        } else if redTrafficLightView.backgroundColor == #colorLiteral(red: 0.5527142397, green: 0.1346355199, blue: 0.1346355199, alpha: 1) && yellowTrafficLightView.backgroundColor == #colorLiteral(red: 0.5435929446, green: 0.5262179572, blue: 0.2287210027, alpha: 1) && greenTrafficLightView.backgroundColor == #colorLiteral(red: 0.1722537255, green: 0.9449097939, blue: 0.414533877, alpha: 1) {
            redTrafficLightView.backgroundColor = #colorLiteral(red: 1, green: 0.2435897436, blue: 0.2435897436, alpha: 1)
            greenTrafficLightView.backgroundColor = #colorLiteral(red: 0.09598759765, green: 0.5079333119, blue: 0.2253593592, alpha: 1)
        }
    }
}
        
    

