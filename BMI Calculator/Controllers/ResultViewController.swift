//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by 이상지 on 7/6/25.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
  
  @IBOutlet weak var bmiLabel: UILabel!
  
  @IBOutlet weak var adviceLabel: UILabel!
  
  var bmi: String?
  var advice: String?
  var backgroundColor: UIColor?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.bmiLabel.text = bmi
    self.adviceLabel.text = advice
    self.view.backgroundColor = backgroundColor
  }
  
  @IBAction func recalculateButton(_ sender: UIButton) {
    self.dismiss(animated: true)
  }
}
