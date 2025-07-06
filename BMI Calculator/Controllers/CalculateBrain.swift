//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by 이상지 on 7/6/25.
//  Copyright © 2025 Angela Yu. All rights reserved.
//
import UIKit

final class CalculateBrain {
  
  var bmi: BMI?
  
  func calcuateBMI(height: Float, weight:Float) {
    let value = weight / pow(height, 2)
    
    if value < 18 {
      self.bmi = BMI(bmi: value, advice: "저체중", backgroundColor: .cyan)
    } else if value < 24 {
      self.bmi = BMI(bmi: value, advice: "정상", backgroundColor: .green)
    } else {
      self.bmi = BMI(bmi: value, advice: "과체중", backgroundColor: .red)
    }
  }
  
  func advice() -> String {
    return self.bmi?.advice ?? ""
  }
  
  func backgroundColor() -> UIColor {
    return self.bmi?.backgroundColor ?? .darkGray
  }
  
  func bmiValue() -> String {
    return String(format: "%1.f", self.bmi?.bmi ?? 0)
  }
}
