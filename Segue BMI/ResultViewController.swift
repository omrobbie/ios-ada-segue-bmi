//
//  ResultViewController.swift
//  Segue BMI
//
//  Created by omrobbie on 01/08/18.
//  Copyright © 2018 omrobbie. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var lblResult: UILabel!
    
    var weight:Float = 0.0
    var height:Float = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.lblResult.text = String((self.weight / pow(self.height, 2)).format(f: ".1"))
    }

    @IBAction func btnFinishClicked(_ sender: Any) {
        self.performSegue(withIdentifier: "toEverywhere", sender: self)
    }
    
}
