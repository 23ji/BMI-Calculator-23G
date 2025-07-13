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
  
  // 위의 bmi가 옵셔널이기 때문에 초기화 필수 아님! 생략 가능
//  init() {
//  }
  
  //비즈니스 로직 1 : bmi 계산
  func calculateBMI(height: Float, weight: Float) {
    let value = weight / pow(height, 2)
    
    // 비즈니스 로직 2 : bmi 결과에 따른 결과값 데이터 저장
    if value < 18.5{
      bmi = BMI(bmiValue: value, advice: "저체중", backgroundColor: .cyan)
    } else if value < 23 {
      bmi = BMI(bmiValue: value, advice: "정상", backgroundColor: .green)
    } else {
      bmi = BMI(bmiValue: value, advice: "과체중", backgroundColor: .red)
    }
  }
  
  // 함수를 통해 원하는 결과 요청할 수 있도록
  
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
