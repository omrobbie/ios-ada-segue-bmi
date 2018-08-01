//
//  ViewController.swift
//  Segue BMI
//
//  Created by omrobbie on 01/08/18.
//  Copyright © 2018 omrobbie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func unwindEverywhere(segue:UIStoryboardSegue) { }
    
}

extension Float {
    func format(f: String) -> String {
        return String(format: "%\(f)f", self)
    }
}
