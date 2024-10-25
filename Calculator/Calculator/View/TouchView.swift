//
//  TouchView.swift
//  Calculator
//
//  Created by Thierry Sarr on 25/10/2024.
//

import SwiftUI

struct TouchView: View {
    let number: Int
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.orange)
                
            Button(action: {}){
                Text("\(number)")
                    .font(.title)
                    .bold()
                    .foregroundStyle(Color.white)
            }
        }
        .frame(maxWidth: 80, maxHeight: 80)
    }
}

#Preview {
    TouchView(number: 7)
}
