//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Samuel_Lu on 2022/10/4.
//  Copyright © 2022 London App Brewery. All rights reserved.
//

import Foundation

class CalculatorLogic {
    
    var number: Double
    
    init(number: Double) {
        self.number = number
    }
    
    func calculate(symbol: String) -> Double? {
        
        if symbol == "AC" {
            return 0
        } else if symbol == "+/-" {
            return number * -1
        } else if symbol == "%" {
            return number / 100
        }
        
        return nil
        
//        switch symbol {
//        case "AC":
//            number = 0
//        case "+/-":
//            number *= -1
//        case "%":
//            number = number / 100
//
//        default:
//            break
//        }
//        return number
    }
}