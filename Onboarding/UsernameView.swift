//
//  UsernameView.swift
//  Onboarding
//
//  Created by Martin Wainaina on 22/05/2024.
//

import SwiftUI

struct UsernameView: View {
    var body: some View {
        VStack {
            Text("👥")
                .font(.system(size: 100))
            
            Text("Username")
                .font(.system(size: 30,
                              weight: .bold,
                              design: .rounded))
                .foregroundStyle(.white)
            
            TextField("Please enter a username", text: .constant(""))
                .padding()
                .frame(width: 350, height: 50)
                .background( in: RoundedRectangle(cornerRadius: 10, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
                .font(.system(size: 13, weight: .bold, design: .rounded))
                .padding(.bottom, 8)
            
            Button("Next") {
                
            }
            .padding()
            .frame(width: 350, height: 50)
            .font(.system(size: 20, weight: .bold, design: .rounded))
            .background( in: RoundedRectangle(cornerRadius: 10, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
            .padding(.top, 40)
                
        }
    }
}

#Preview {
    UsernameView()
        .padding()
        .previewLayout(.sizeThatFits)
        .background(.blue)
}
