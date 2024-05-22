//
//  AgeView.swift
//  Onboarding
//
//  Created by Martin Wainaina on 22/05/2024.
//

import SwiftUI

struct AgeView: View {
    let action: () -> Void
    var body: some View {
        VStack {
            Text("👦")
                .font(.system(size: 100))
            
            Text("Age")
                .font(.system(size: 30,
                              weight: .bold,
                              design: .rounded))
                .foregroundStyle(.white)
            
            VStack{
                Text("1yr")
                    .font(.system(size: 20,
                                  weight: .regular,
                                  design: .rounded))
                    .foregroundColor(.white)
                
                Slider(value: .constant(0), in: 10...100, step: 1)
                    .padding()
            }
            
            Button("Next") {
                action()
            }
            .primaryTextModifier()
                
        }
    }
}

#Preview {
    AgeView{}
        .padding()
        .previewLayout(.sizeThatFits)
        .background(.blue)
}
