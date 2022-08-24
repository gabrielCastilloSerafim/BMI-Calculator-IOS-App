//
//  ResultsViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Gabriel Castillo Serafim on 24/8/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    
    @IBOutlet weak var ibmValueLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var value:Float?
    var advice:String?
    var color:UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Display information brought from calculator view
        ibmValueLabel.text = "\(String(format: "%.2f", value!))"
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        
        dismiss(animated: true)
    }

}
