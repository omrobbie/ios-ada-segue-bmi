//
//  HeightViewController.swift
//  Segue BMI
//
//  Created by omrobbie on 01/08/18.
//  Copyright © 2018 omrobbie. All rights reserved.
//

import UIKit

class HeightViewController: UIViewController {

    @IBOutlet weak var lblHeight: UILabel!
    @IBOutlet weak var sldHeight: UISlider!
    
    var weight:Float = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.sldHeight.minimumValue = 1
        self.sldHeight.maximumValue = 3
        self.sldHeight.value = self.sldHeight.minimumValue
        
        updateLabel()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toFinish" {
            if let vc = segue.destination as? ResultViewController {
                vc.weight = self.weight
                vc.height = Float(self.sldHeight.value)
            }
        }
    }

    func updateLabel() {
        self.lblHeight.text = String(self.sldHeight.value.format(f: ".1"))
    }
    
    @IBAction func sldHeightChanged(_ sender: Any, forEvent event: UIEvent) {
        updateLabel()
        
        if let touchEvent = event.allTouches?.first {
            switch touchEvent.phase {
            case .ended:
                self.performSegue(withIdentifier: "toFinish", sender: self)
            default:
                break
            }
        }
    }
    
}
