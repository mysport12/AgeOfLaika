//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Craig Martin on 12/30/14.
//  Copyright (c) 2014 MadKitty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayDogYears: UILabel!
    @IBOutlet weak var enterHumanYearsText: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertDogYearsPressed(sender: UIButton) {
        let humanAgeText = enterHumanYearsText.text
        var dogAgeYears = humanAgeText.toInt()!
        let dogAgeConversionConstant = 7
        dogAgeYears *= dogAgeConversionConstant
        displayDogYears.text = "\(dogAgeYears)"
        enterHumanYearsText.text = ""
        enterHumanYearsText.resignFirstResponder()
    }

    
    @IBAction func convertRealDogYearsPressed(sender: UIButton) {
        let humanAgeText = enterHumanYearsText.text
        var dogRealAgeYears = Double((humanAgeText as NSString).doubleValue)
        if dogRealAgeYears <= 2.0 {
           let dogRealAgeConversionConstantYounger = 10.5
            dogRealAgeYears *= dogRealAgeConversionConstantYounger
        }
        else {
           let dogRealAgeConversionConstantOlder = 4.0
            dogRealAgeYears = 21.0 + ((dogRealAgeYears-2.0)*dogRealAgeConversionConstantOlder)
        }
        displayDogYears.text = "\(dogRealAgeYears)"
        enterHumanYearsText.text = ""
        enterHumanYearsText.resignFirstResponder()
    }
    
}

