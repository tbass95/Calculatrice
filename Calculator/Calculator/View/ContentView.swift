//
//  ContentView.swift
//  Calculator
//
//  Created by Thierry Sarr on 25/10/2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var calculatorManager: CalculatorManager = CalculatorManager()
    
    var body: some View {
        VStack {
            
            Text("Hello World")
            
            VStack{
                TouchRow()
                TouchRow(range: 4..<7)
                TouchRow(range: 7..<10)
                OperatorView()
                
                
            }
            
            .navigationTitle("Calculatrice")
            .navigationBarTitleDisplayMode(.inline)
        }
        .padding()
    }
    
}

#Preview {
    NavigationStack {
        ContentView()
    }
}

struct TouchRow: View {
    var range = 1..<4
    var body: some View {
        HStack {
            ForEach(range){ number in TouchView(number: number)
                
            }
            
        }
    }
}

struct OperatorView: View {
    var body: some View {
        HStack {
            ForEach(CalculatorManager.Operators.allCases, id: \.self){ newOperator in
                OperatorButtonView(newoperator: newOperator.rawValue)
            }
        }
    }
}
