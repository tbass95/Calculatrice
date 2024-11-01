//
//  CalculatorManager.swift
//  Calculator
//
//  Created by Thierry Sarr on 25/10/2024.
//

import Foundation
class CalculatorManager: ObservableObject{
    enum Operators: String, Equatable, CaseIterable {
        
        case addition = "+"
        case subtraction = "-"
        case multiplication = "*"
        case division = "/"
        
    }
    @Published var expression: [Double] = []
    @Published var result: Double = 0
}
