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
  
  var calculateBrain = CalculateBrain()
  
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
    self.performSegue(withIdentifier: "goToResult", sender: self)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "goToResult" {
      let resultVC = segue.destination as? ResultViewController
      
      // 뷰컨에서 비즈니스 로직 처리하는 것이 아니라 Model에서 결과만 요청, 받아오기
      
      calculateBrain.calculateBMI(height: self.heightSilder.value, weight: self.weightSilder.value)
      resultVC?.bmiValue = self.calculateBrain.getBMI()
      resultVC?.advice = self.calculateBrain.getAdvice()
      resultVC?.backgroundColor = self.calculateBrain.getBackgroundColor()
    }
  }
}
