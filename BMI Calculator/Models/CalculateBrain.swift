//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by 이상지 on 7/11/25.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

class CalculateBrain {
  private var bmi: BMI?
  
  init() {
  }
  
  func calculateBMI(height: Float, weight: Float) {
    let value = weight / pow(height, 2)
    
    if value < 18.5{
      bmi = BMI(bmiValue: value, advice: "저체중", backgroundColor: .cyan)
    } else if value < 23 {
      bmi = BMI(bmiValue: value, advice: "정상", backgroundColor: .green)
    } else {
      bmi = BMI(bmiValue: value, advice: "과체중", backgroundColor: .red)
    }
  }
  
  func getBMI() -> String {
    return String(format: "%.2f", bmi?.bmiValue ?? 0.0)
  }
  
  func getAdvice() -> String {
    return bmi?.advice ?? "-"
  }
  
  func getBackgroundColor () -> UIColor {
    return bmi?.backgroundColor ?? .black
  }
}
