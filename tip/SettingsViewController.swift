//
//  SettingsViewController.swift
//  tip
//
//  Created by Mennatullah Khaliel on 10/9/20.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var firstDefaultTip: UITextField!
    @IBOutlet weak var secondDefaultTip: UITextField!
    @IBOutlet weak var thirdDefaultTip: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load")
        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        
        let defaults = UserDefaults.standard
        let firstTipValue = defaults.string(forKey: "firstTip")!
        let secondTipValue = defaults.string(forKey: "secondTip")!
        let thirdTipValue = defaults.string(forKey: "thirdTip")!
        
        firstDefaultTip.text = firstTipValue + "%"
        secondDefaultTip.text = secondTipValue + "%"
        thirdDefaultTip.text = thirdTipValue + "%"
    }

    
    @IBAction func defaultSettings(_ sender: Any) {
        let defaults = UserDefaults.standard
        let first = Int(firstDefaultTip.text!) ?? 10
        let second = Int(secondDefaultTip.text!) ?? 18
        let third = Int(thirdDefaultTip.text!) ?? 25
      
        defaults.set(first, forKey: "firstTip")
        defaults.set(second, forKey: "secondTip")
        defaults.set(third, forKey: "thirdTip")
        defaults.synchronize()
        
    }
    

    

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
