//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Gabriel Castillo Serafim on 24/8/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit

//This variable follows the structure of the BMI struct
var bmi:BMI?

let colorBackground = [#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1), #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)]

struct CalculatorBrain {
    
    func performIBMCalculation(heightValue:Float, weightValue:Float) {
        
        //BMI formula
        let bmiValue = weightValue / pow(heightValue, 2)
        
        //Sets all characteristics that are displayed in ResultsViewController and stores it in an object called bmi wich has a BMI? data type
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Under weight", color: colorBackground[0])
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Normal weight", color: colorBackground[1])
        } else {
            bmi = BMI(value: bmiValue, advice: "Over weight", color: colorBackground[2])
        }
    }
    
    func getBmiValue() -> Float {
        return bmi?.value ?? 0
    }
    
    func getBmiAdvice() -> String {
        return bmi?.advice ?? "Error"
    }
    
    func getBmiColor() -> UIColor {
        return bmi?.color ?? .white
    }
    
}
