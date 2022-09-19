//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Егор Глезденёв on 09.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = -100
            slider.value = 0
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let celciusTemperature = Int(round(sender.value))
        celsiusLabel.text = "\(celciusTemperature)ºC"
        let fahrenheitTemperature = Int(round(sender.value * 9 / 5 + 32))
        fahrenheitLabel.text = "\(fahrenheitTemperature)ºF"
    }
    
}

