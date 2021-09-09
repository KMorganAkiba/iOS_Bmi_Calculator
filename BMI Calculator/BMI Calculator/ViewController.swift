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
        
        var weight: Double = 0
        var height: Double = 0
        
        if weightTextField.text != nil{
            if Double(weightTextField.text!) != nil{
                weight = Double(weightTextField.text!)! / 2.205
            }
        }
        
        if heightTextField.text != nil{
            if Double(heightTextField.text!) != nil{
                height = Double(heightTextField.text!)! / 39.37
            }
        }
        
        //reveals hidden lable after calculation is performed
        self.bmiLabel.isHidden = false
    
        
        // formula for calculating BMI
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

