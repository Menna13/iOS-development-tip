//
//  ViewController.swift
//  tip
//
//  Created by Menna Khaliel on 10/3/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var customTip: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    var tipInput = [Double]()
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")

        let defaults = UserDefaults.standard
        let firstTipValue = defaults.string(forKey: "firstTip")!
        let secondTipValue = defaults.string(forKey: "secondTip")!
        let thirdTipValue = defaults.string(forKey: "thirdTip")!
        print (firstTipValue, secondTipValue, thirdTipValue)
        tipControl.setTitle(firstTipValue + "%", forSegmentAt: 0)
        tipControl.setTitle(secondTipValue + "%", forSegmentAt: 1)
        tipControl.setTitle(thirdTipValue + "%", forSegmentAt: 2)
        tipInput = [Double(firstTipValue)!*0.01, Double(secondTipValue)!*0.01, Double(thirdTipValue)!*0.01,0]
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        let custom = Double(customTip.text!) ?? 0
        tipInput[3] = custom * 0.01
        let tip = bill * tipInput[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

 
