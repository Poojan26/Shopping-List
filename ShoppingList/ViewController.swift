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
    
    // Textview outlets declaration
    
    @IBOutlet weak var TextviewShoplist: UITextField!
    @IBOutlet weak var TextviewItem1: UITextField!
    @IBOutlet weak var TextviewItem2: UITextField!
    @IBOutlet weak var TextviewItem3: UITextField!
    @IBOutlet weak var TextviewItem4: UITextField!
    @IBOutlet weak var TextviewItem5: UITextField!
    
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
        
        // Reset text values
        TextviewShoplist.text = "My Shopping list"
        TextviewItem1.text = ""
        TextviewItem2.text = ""
        TextviewItem3.text=""
        TextviewItem4.text = ""
        TextviewItem5.text = ""
    }
    
    // Save button action
    
    @IBAction func OnSaveClick(_ sender: UIButton) {
        
        // Assigning user defaults to the user value on button click
        UserDefaults.standard.set(TextviewShoplist.text,forKey: "Shoplist")
        UserDefaults.standard.set(TextviewItem1.text,forKey: "Item1")
        UserDefaults.standard.set(TextviewItem2.text,forKey: "Item2")
        UserDefaults.standard.set(TextviewItem3.text,forKey: "Item3")
        UserDefaults.standard.set(TextviewItem4.text,forKey: "Item4")
        UserDefaults.standard.set(TextviewItem5.text,forKey: "Item5")
        
        // Quantity values
        UserDefaults.standard.set(StepperLabel1.text,forKey: "Q1")
        UserDefaults.standard.set(StepperLabel2.text,forKey: "Q2")
        UserDefaults.standard.set(StepperLabel3.text,forKey: "Q3")
        UserDefaults.standard.set(StepperLabel4.text,forKey: "Q4")
        UserDefaults.standard.set(StepperLabel5.text,forKey: "Q5")
        
    }
    @IBAction func RetriveButton(_ sender: UIButton) {
        
        // Shopping item values
        TextviewShoplist.text = UserDefaults.standard.object(forKey: "Shoplist") as? String
        TextviewItem1.text = UserDefaults.standard.object(forKey: "Item1") as? String
        TextviewItem2.text = UserDefaults.standard.object(forKey: "Item2") as? String
        TextviewItem3.text = UserDefaults.standard.object(forKey: "Item3") as? String
        TextviewItem4.text = UserDefaults.standard.object(forKey: "Item4") as? String
        TextviewItem5.text = UserDefaults.standard.object(forKey: "Item5") as? String
        
        // Quantities
        StepperLabel1.text = UserDefaults.standard.object(forKey: "Q1") as? String
        StepperLabel2.text = UserDefaults.standard.object(forKey: "Q2") as? String
        StepperLabel3.text = UserDefaults.standard.object(forKey: "Q3") as? String
        StepperLabel4.text = UserDefaults.standard.object(forKey: "Q4") as? String
        StepperLabel5.text = UserDefaults.standard.object(forKey: "Q5") as? String
        
    }
}

