//
//  SettingsViewController.swift
//  tip
//
//  Created by Shania Dhani on 8/1/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipControlDefault: UISegmentedControl!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false);
        let defaults = UserDefaults.standard
        let tipValue = defaults.double(forKey: "defaultTip")
        tipControlDefault.selectedSegmentIndex = Int(tipValue)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func changeDefaultTip(_ sender: Any) {        
        let defaults = UserDefaults.standard
        defaults.set(tipControlDefault.selectedSegmentIndex, forKey: "defaultTip")
        // Force UserDefaults to save.
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
