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
    self.performSegue(withIdentifier: "goToResult", sender: self)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "goToResult" {
      let resultVC = segue.destination as? ResultViewController
      
      // 비즈니스 로직 1 : BMI 계산
      let bmi = Float(self.weightSilder.value) / pow(Float(self.heightSilder.value), 2)
      
      resultVC?.bmi = String(format: "%.1f", bmi)
      
      // 비즈니스 로직 2 : BMI에 따른 결과 데이터 전달
      if bmi < 18.5{
        resultVC?.advice = "저체중"
        resultVC?.backgroundColor = .cyan
      } else if bmi < 23 {
        resultVC?.advice = "정상"
        resultVC?.backgroundColor = .green
      } else {
        resultVC?.advice = "과체중"
        resultVC?.backgroundColor = .red
      }
    }
  }
}
