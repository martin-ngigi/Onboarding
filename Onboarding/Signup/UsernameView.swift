//
//  UsernameView.swift
//  Onboarding
//
//  Created by Martin Wainaina on 22/05/2024.
//

import SwiftUI

struct UsernameView: View {
    @Binding var text: String
    let action: () -> Void
    
    var body: some View {
        VStack {
            Text("👥")
                .font(.system(size: 100))
            
            Text("Username")
                .font(.system(size: 30,
                              weight: .bold,
                              design: .rounded))
                .foregroundStyle(.white)
            
            TextField("Please enter a username", text: $text)
                .primaryTextModifier()
            
            Button("Next") {
                action()
            }
            .primaryTextModifier()
                
        }
    }
}

#Preview {
    UsernameView(text: .constant("")){}
        .padding()
        .previewLayout(.sizeThatFits)
        .background(.blue)
}
