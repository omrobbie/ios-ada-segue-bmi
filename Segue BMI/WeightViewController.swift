//
//  WeightViewController.swift
//  Segue BMI
//
//  Created by omrobbie on 01/08/18.
//  Copyright © 2018 omrobbie. All rights reserved.
//

import UIKit

class WeightViewController: UIViewController {

    @IBOutlet weak var lblWeight: UILabel!
    @IBOutlet weak var sldWeight: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.sldWeight.minimumValue = 20
        self.sldWeight.maximumValue = 250
        self.sldWeight.value = self.sldWeight.minimumValue
        
        updateLabel()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toHeight" {
            if let vc = segue.destination as? HeightViewController {
                vc.weight = Float(self.sldWeight.value)
            }
        }
    }
    
    func updateLabel() {
        self.lblWeight.text = String(self.sldWeight.value.format(f: ".1"))
    }

    @IBAction func sldWeightChanged(_ sender: Any, forEvent event: UIEvent) {
        updateLabel()
        
        if let touchEvent = event.allTouches?.first {
            switch touchEvent.phase {
            case .ended:
                self.performSegue(withIdentifier: "toHeight", sender: self)
            default:
                break
            }
        }
    }

}
