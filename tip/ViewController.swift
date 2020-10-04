//
//  ViewController.swift
//  tip
//
//  Created by Mennatullah Khaliel on 10/3/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!

    @IBOutlet weak var customTip: UITextField!
    //    @IBOutlet weak var customTip: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        print("got first")
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        print("got first")
        let bill = Double(billField.text!) ?? 0
        let custom = Double(customTip.text!) ?? 0
        let tipPercentage = [0.1,0.18,0.2, custom]
        
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //Get the bill amount
        // calculate the tip and total
        //update tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        print("got last")
        
    }
}

 
