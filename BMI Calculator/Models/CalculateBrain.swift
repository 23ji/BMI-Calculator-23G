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
 
  init(bmi: BMI) {
    self.bmi = bmi
  }
  
  func calculateBMI(height: Float, weight: Float) {

  }
  
  func getBMI() -> String {
    return ""
  }
  
  func getAdvice() -> String {
    return ""
  }
  
  func getBackgroundColor () -> UIColor {
    return .black
  }
}
