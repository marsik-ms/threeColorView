//
//  ViewController.swift
//  threeColorView
//
//  Created by Stanislav Perepechin on 25/03/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueLabel: UILabel!

        override func viewDidLoad() {
            super.viewDidLoad()
          
            colorView.layer.cornerRadius = 12
            redSlider.value = 0.0
            greenSlider.value = 0.0
            blueSlider.value = 0.0
            updateColor()
        }

        @IBAction func sliderValueChanged(_ sender: UISlider) {
            updateColor()
            switch sender {
            case redSlider:
                redLabel.text = "\(Int(sender.value))"
            case greenSlider:
                greenLabel.text = "\(Int(sender.value))"
            case blueSlider:
                blueLabel.text = "\(Int(sender.value))"
            default:
                break   //на уроке вы сказали что вместо дефолт можно просто последний кейс вписать. Это и нужно было сделать?
            }
        }

        func updateColor() {
            let red = CGFloat(redSlider.value) / 255.0
            let green = CGFloat(greenSlider.value) / 255.0
            let blue = CGFloat(blueSlider.value) / 255.0
            colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    
    
    }


}

