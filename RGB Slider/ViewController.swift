//
//  ViewController.swift
//  RGB Slider
//
//  Created by Artem H on 6.10.24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redChannelLabel: UILabel!
    @IBOutlet var greenChannelLabel: UILabel!
    @IBOutlet var blueChannelLabel: UILabel!
    
    @IBOutlet var redSliderOutlet: UISlider!
    @IBOutlet var greenSliderOutlet: UISlider!
    @IBOutlet var blueSliderOutlet: UISlider!
    
    @IBOutlet var colorView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 8
        
        setUpSlidersColor()
        setUpColorView()
        
        setRedChannelLabelText()
        setGreenChannelLabelText()
        setBlueChannelLabelText()
    }

    @IBAction func redColorSlider() {
        setRedChannelLabelText()
        setUpColorView()
    }
    
    @IBAction func greenColorSlider() {
        setGreenChannelLabelText()
        setUpColorView()
    }
    
    @IBAction func blueColorSlider() {
        setBlueChannelLabelText()
        setUpColorView()
    }
    
    private func setUpSlidersColor() {
        [redSliderOutlet, greenSliderOutlet, blueSliderOutlet].forEach { slider in
            slider.maximumTrackTintColor = .white.withAlphaComponent(0.3)
        }
    }
    
    private func setUpColorView() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSliderOutlet.value), green: CGFloat(greenSliderOutlet.value), blue: CGFloat(blueSliderOutlet.value), alpha: 1)
    }
    
    private func setRedChannelLabelText() {
        redChannelLabel.text = String(format: "%.2f", redSliderOutlet.value)
    }
    
    private func setGreenChannelLabelText() {
        greenChannelLabel.text = String(format: "%.2f", greenSliderOutlet.value)
    }
    
    private func setBlueChannelLabelText() {
        blueChannelLabel.text = String(format: "%.2f", blueSliderOutlet.value)
    }

}


