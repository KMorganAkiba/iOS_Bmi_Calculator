//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Kyle Morgan on 9/8/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var bmiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //Performs calculation by dividing weight by height^2
    @IBAction func calculateBmiButton(_ sender: UIButton) {
   
        //reveals hidden lable after calculation is performed
        self.bmiLabel.isHidden = false
        //takes enterd weight and heights and converts the value to metric system
        let weight = Double(weightTextField.text!)! / 2.205
        let height = Double(heightTextField.text!)! / 39.37
        
        
        
        let bmi = weight/(height * height)
   
        var classification:String
        
        if bmi < 18.5{
            classification = "Underweight"
        }
        else if bmi < 24.9{
            classification = "Healthy Weight"
        }
        else if bmi < 29.9{
           classification = "Overweight"
        }
        else{
            classification = "Obese"
        }
        
        let formattedBMI = String( format: "%.2f", bmi)
        bmiLabel.text = "BMI: \(formattedBMI), \(classification)"
        
    }
    
}

