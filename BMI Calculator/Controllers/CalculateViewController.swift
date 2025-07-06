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
    self.heightLabel.text = String(self.heightSilder.value)
    self.weightLabel.text = String(self.weightSilder.value)
  }
  
  
  @IBAction func heightSilderChanged(_ sender: UISlider) {
    let value = String(format: "%.2f", self.heightSilder.value)
    self.heightLabel.text = value
  }
  
  @IBAction func weightSilderChanged(_ sender: UISlider) {
    self.weightLabel.text = String(self.weightSilder.value)
    let value = String(format: "%.2f", self.weightSilder.value)
    self.weightLabel.text = value
  }
  
  @IBAction func calculateButton(_ sender: UIButton) {
  }
}

