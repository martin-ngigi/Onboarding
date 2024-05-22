//
//  BioView.swift
//  Onboarding
//
//  Created by Martin Wainaina on 22/05/2024.
//

import SwiftUI

struct BioView: View {
    @Binding var text: String

    let action: () -> Void
    var body: some View {
        VStack {
            Text("✍️")
                .font(.system(size: 100))
            
            Text("Bio")
                .font(.system(size: 30,
                              weight: .bold,
                              design: .rounded))
                .foregroundStyle(.white)
            
            TextEditor(text: $text)
                .clipShape(RoundedRectangle(cornerRadius: 10, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
            
            Button("Register") {
                action()
            }
            .secondaryButtonModifier()
        }
        .padding()
    }
    
}

#Preview {
    BioView(text: .constant("")){}
        .padding()
        .previewLayout(.sizeThatFits)
        .background(.blue)
}
