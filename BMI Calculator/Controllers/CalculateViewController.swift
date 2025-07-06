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
  
  private let calculateBrain = CalculateBrain()
  
  override func viewDidLoad() {
    super.viewDidLoad()
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
    // bmi = 몸무게 / (키 * 키)
    self.calculateBrain.calcuateBMI(
      height: self.heightSilder.value,
      weight: self.weightSilder.value
    )
    
    self.performSegue(withIdentifier: "goToResult", sender: nil)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "goToResult" {
      let resultVC = segue.destination as? ResultViewController

      resultVC?.bmiValue = self.calculateBrain.bmiValue()
      resultVC?.advice = self.calculateBrain.advice()
      resultVC?.backgroundColor = self.calculateBrain.backgroundColor()
    }
  }
}

