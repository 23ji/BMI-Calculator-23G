//
//  CalculateViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

  @IBOutlet weak var heightLabel: UILabel!
  @IBOutlet weak var heightSilder: UISlider!
  
  @IBOutlet weak var weightLabel: UILabel!
  @IBOutlet weak var weightSilder: UISlider!
  
  override func viewDidLoad() {
        super.viewDidLoad()
    }


  @IBAction func heightSilderChanged(_ sender: UISlider) {
    self.heightLabel.text = String(format: "%.2f", sender.value)
  }
  
  @IBAction func weightSilderChanged(_ sender: UISlider) {
    self.weightLabel.text = String(format: "%.1f", sender.value)
  }
  
  @IBAction func calculateButton(_ sender: UIButton) {
    // BMI 계산
  }
}

