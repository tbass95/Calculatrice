//
//  OperatorButtonView.swift
//  Calculator
//
//  Created by Thierry Sarr on 01/11/2024.
//

import SwiftUI

struct OperatorButtonView: View {
    
    var newoperator: String
    
    var body: some View {
        
        Button(action: {}) {
            Text(newoperator)
                .font(.largeTitle)
                .frame(width: 80 , height: 80 )
                .background(Color.gray)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 20))
        }
    }
}

#Preview {
    Group {
        HStack {
            OperatorButtonView(newoperator: "+")
            OperatorButtonView(newoperator: "-")
            OperatorButtonView(newoperator: "*")
            
        }
    }
}
