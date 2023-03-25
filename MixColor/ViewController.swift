//
//  ViewController.swift
//  MixColor
//
//  Created by Саша Amigo on 24.03.2023.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet weak var paletteView: UIView!
    @IBOutlet weak var currentValueLebelRed: UILabel!
    @IBOutlet weak var currentValueLabelGreen: UILabel!
    @IBOutlet weak var currentValueLabelBlue: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    private func setColors () {
        paletteView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        paletteView.layer.cornerRadius = 10
    }
    
    @IBAction func redSliderAction() {
        currentValueLebelRed.text = redSlider.value.formatted(.number.precision(.fractionLength(2)))
       setColors()
    }
    @IBAction func greenSliderAction() {
        currentValueLabelGreen.text = greenSlider.value.formatted(.number.precision(.fractionLength(2)))
        setColors()
    }
    @IBAction func blueSliderAction() {
        currentValueLabelBlue.text = blueSlider.value.formatted(.number.precision(.fractionLength(2)))
        setColors()
        
    }
}
