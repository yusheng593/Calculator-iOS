//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Samuel_Lu on 2022/10/4.
//  Copyright © 2022 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    private var number: Double?
    private var intermediateCalculation:(n1: Double,calcMethod: String)?
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    func calculate(symbol: String) -> Double? {
        
//        guard let number = number else {
//            fatalError("Label 沒有值")
//        }

        if let n = number {
            if symbol == "AC" {
                return 0
            } else if symbol == "+/-" {
                return n * -1
            } else if symbol == "%" {
                return n / 100
            }
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
