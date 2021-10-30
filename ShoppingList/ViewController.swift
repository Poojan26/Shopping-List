// Name: Poojan Patel
// Student ID- 301228811
// Course: MAPD 714
//  ViewController.swift
//  ShoppingList
//  Creating a Shopping list UI to add shopping items for user
//  Created by Poojan on 10/30/21.
//

import UIKit

class ViewController: UIViewController {
    
    // Stepper Outlets
    
    @IBOutlet weak var MyStepper1: UIStepper!
    
    @IBOutlet weak var MyStepper2: UIStepper!
    
    @IBOutlet weak var MyStepper3: UIStepper!
    
    @IBOutlet weak var MyStepper4: UIStepper!
    
    @IBOutlet weak var MyStepper5: UIStepper!
    
  
    
    // Stepper Labels Declaration
    
    @IBOutlet weak var StepperLabel1: UILabel!
    
    @IBOutlet weak var StepperLabel2: UILabel!
    
    @IBOutlet weak var StepperLabel3: UILabel!
    
    @IBOutlet weak var StepperLabel4: UILabel!
    
    
    @IBOutlet weak var StepperLabel5: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Actions for Steppers
    
   
    @IBAction func StepperAction1(_ sender: UIStepper) {
        StepperLabel1.text = String(MyStepper1.value)
    }
    
    
    @IBAction func StepperAction2(_ sender: UIStepper) {
        StepperLabel2.text = String(MyStepper2.value)
    }
    

    @IBAction func StepperAction3(_ sender: UIStepper) {
        StepperLabel3.text = String(MyStepper3.value)
    }
    
    @IBAction func StepperAction4(_ sender: UIStepper) {
        StepperLabel4.text = String(MyStepper4.value)
    }
    
    @IBAction func StepperAction5(_ sender: UIStepper) {
        StepperLabel5.text = String(MyStepper5.value)
    }

    // Cancel button action
    @IBAction func OnCancelClick(_ sender: UIButton) {
        
        // Setting label texts to 0
        StepperLabel1.text = "0"
        StepperLabel2.text = "0"
        StepperLabel3.text = "0"
        StepperLabel4.text = "0"
        StepperLabel5.text = "0"
        
        // Setting stepper values to 0
        MyStepper1.value = 0
        MyStepper2.value = 0
        MyStepper3.value = 0
        MyStepper4.value = 0
        MyStepper5.value = 0
    }
}

