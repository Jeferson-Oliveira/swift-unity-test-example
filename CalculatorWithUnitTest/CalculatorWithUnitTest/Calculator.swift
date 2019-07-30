//
//  Calculator.swift
//  CalculatorWithUnitTest
//
//  Created by Jeferson Oliveira Cequeira de Jesus on 29/07/19.
//  Copyright © 2019 Jeferson Oliveira Cequeira de Jesus. All rights reserved.
//

import Foundation

class Calculator {
    var result = 0.0
    
    func sum(a: Double, b: Double) {
        result = a + b
    }
    
    func mutiply(a: Double, b: Double) {
        result = a * b
    }
    
    func divide(a: Double, b: Double) {
        if b == 0 {
            result = Double.infinity
        } else {
            result = a / b
        }
    }
    
    func minus(a: Double, b: Double) {
        result = a - b
    }
}
