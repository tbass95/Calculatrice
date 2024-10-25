//
//  ContentView.swift
//  Calculator
//
//  Created by Thierry Sarr on 25/10/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
           
            Text("Hello, world!")
            
            VStack{
                HStack {
                    ForEach(1..<4)  { number in TouchView(number: number)
                        
                    }
                    
                }
                  
                HStack {
                    ForEach(4..<7)  { number in TouchView(number: number)
                        
                    }
                    
                }
                
                HStack {
                    ForEach(7..<10)  { number in TouchView(number: number)
                        
                    }
                    
                }
                
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
