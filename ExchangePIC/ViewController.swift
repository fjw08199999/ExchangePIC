//
//  ViewController.swift
//  ExchangePIC
//
//  Created by fred fu on 2021/2/16.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView01: UIImageView!
    @IBOutlet weak var imageView02: UIImageView!
    @IBOutlet weak var exchangePIC: UISegmentedControl!
    @IBOutlet weak var setColorSliderValue: UISlider!
    @IBOutlet weak var randomColorButtonLabel: UIButton!
    
    @IBOutlet weak var leftRedSliderValue: UISlider!
    @IBOutlet weak var leftGreenSliderValue: UISlider!
    @IBOutlet weak var leftBlueSliderValue: UISlider!
    @IBOutlet weak var leftAlphaSliderValue: UISlider!
    
    @IBOutlet weak var rightRedSliderValue: UISlider!
    @IBOutlet weak var rightGreenSliderValue: UISlider!
    @IBOutlet weak var rightBlueSliderValue: UISlider!
    @IBOutlet weak var rightAlphaSliderValue: UISlider!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        exchangePIC.setTitle("雪花1", forSegmentAt: 0)
        exchangePIC.setTitle("雪花2", forSegmentAt: 1)
        
        leftRedSliderValue.value = 1
        leftGreenSliderValue.value = 0
        leftBlueSliderValue.value = 0
        leftAlphaSliderValue.value = 1
        
        rightRedSliderValue.value = 0
        rightGreenSliderValue.value = 0
        rightBlueSliderValue.value = 1
        rightAlphaSliderValue.value = 1
        
        //漸層背景 imageView01
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = imageView01.bounds
        
        gradientLayer.colors = [
            CGColor(srgbRed: CGFloat(leftRedSliderValue.value), green: CGFloat(leftGreenSliderValue.value), blue: CGFloat(leftBlueSliderValue.value), alpha: CGFloat(leftAlphaSliderValue.value)),
            CGColor(srgbRed: CGFloat(rightRedSliderValue.value), green: CGFloat(rightGreenSliderValue.value), blue: CGFloat(rightBlueSliderValue.value), alpha: CGFloat(rightAlphaSliderValue.value))
        ]
        
        imageView01.layer.insertSublayer(gradientLayer, at: 0)
        
        imageView01.alpha = CGFloat(Float(setColorSliderValue.value))
        
    }

    @IBAction func choice(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex != 0 {
            imageView02.image = UIImage(named: "snow03.png")
        } else {
            imageView02.image = UIImage(named: "snow04.png")
        }
    }
    
    @IBAction func setColorSlider(_ sender: UISlider) {
        
        setColorSliderValue.value = sender.value
        imageView01.alpha = CGFloat(Float(setColorSliderValue.value))
    }
    
    @IBAction func colorSliderSet(_ sender: UISlider) {
        
        
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = imageView01.bounds
        
        gradientLayer.colors = [
            CGColor(srgbRed: CGFloat(leftRedSliderValue.value), green: CGFloat(leftGreenSliderValue.value), blue: CGFloat(leftBlueSliderValue.value), alpha: CGFloat(leftAlphaSliderValue.value)),
            CGColor(srgbRed: CGFloat(rightRedSliderValue.value), green: CGFloat(rightGreenSliderValue.value), blue: CGFloat(rightBlueSliderValue.value), alpha: CGFloat(rightAlphaSliderValue.value))
        ]
        
        imageView01.layer.insertSublayer(gradientLayer, at: 0)
  
    }
}

