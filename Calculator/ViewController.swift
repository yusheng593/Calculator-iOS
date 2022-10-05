//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    private var isFinishedTypingNumber: Bool = true
    private var displayValue: Double {
        get {
            guard let number = Double(displayLabel.text ?? "0") else {
                fatalError("無法將顯示的 Label 轉換為 Double")
            }
            return number
        }
        set {
            displayLabel.text = String(newValue)
        }
    }
    private var calculatorLogic = CalculatorLogic()
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        isFinishedTypingNumber = true
        
        calculatorLogic.setNumber(displayValue)
        
        if let currentTitle = sender.currentTitle {
            
            guard let result = calculatorLogic.calculate(symbol: currentTitle) else {
                fatalError("計算後返回了 nil")
            }
            displayValue = result
        }
        
    }

    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        if let numValue = sender.currentTitle {
            
            if isFinishedTypingNumber {
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            } else if displayLabel.text == "0" {
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            } else {
                
                if numValue == "." {
                    
                    let isInt = floor(displayValue) == displayValue
                    if !isInt {
                        return
                    }
                }
                
                displayLabel.text = displayLabel.text! + numValue
            }
            
            
        }
        
        
    
    }

}

