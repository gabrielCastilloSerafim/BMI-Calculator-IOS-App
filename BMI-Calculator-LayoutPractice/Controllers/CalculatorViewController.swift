//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        //capture the variating value of the slider and pass it to the label
        heightLabel.text = "\(String(format: "%.2f", sender.value))m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
        //capture the variating value of the slider and pass it to the label
        weightLabel.text = "\(String(format: "%.0f", sender.value))Kg"
    }
    
    @IBAction func CalculateButtonPressed(_ sender: UIButton) {
        
        //Capture the value in wich the sliders are set and perform BMI calculation with it
        let heightValue = heightSlider.value
        let weightValue = weightSlider.value
        
        calculatorBrain.performIBMCalculation(heightValue: heightValue, weightValue: weightValue)
        
        //Trigger screen change and setup setup prepare to segue with all the information that we want to take to results screen
        
        self.performSegue(withIdentifier: "goToResultsPage", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResultsPage" {
            let resultsView = segue.destination as! ResultsViewController
            
            resultsView.value = calculatorBrain.getBmiValue()
            resultsView.advice = calculatorBrain.getBmiAdvice()
            resultsView.color = calculatorBrain.getBmiColor()
        }
  
    }
    
}

