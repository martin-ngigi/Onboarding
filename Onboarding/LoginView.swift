//
//  LoginView.swift
//  Onboarding
//
//  Created by Martin Wainaina on 22/05/2024.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var session: SessionManager
    
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            
            VStack(spacing: 0) {
                info
                username
                password
                login
            }
        }
    }
}

private extension LoginView {
    var info: some View {
        VStack{
            Text("🌎")
                .font(.system(size: 200))
            
            Text("John the crew")
                .font(.system(size: 35,
                              weight: .heavy,
                              design: .rounded
                             ))
            
            Text("I would have given you the entire world. The world belongs the you.")
                .font(.system(size: 18,
                              weight: .heavy,
                              design: .rounded
                             ))
        }
        .multilineTextAlignment(.center)
        .foregroundColor(.white)
        .padding(.bottom, 50)
    }
    
    var username: some View {
        TextField("Username", text: .constant(""))
            .padding()
            .frame(width: 350, height: 50)
            .background( in: RoundedRectangle(cornerRadius: 10, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
            .font(.system(size: 13, weight: .bold, design: .rounded))
            .padding(.bottom, 8)
    }
    
    var password: some View {
        SecureField("Password", text: .constant(""))
            .padding()
            .frame(width: 350, height: 50)
            .background( in: RoundedRectangle(cornerRadius: 10, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
            .font(.system(size: 13, weight: .bold, design: .rounded))
            .padding(.bottom, 8)
    }
    
    var login: some View {
        Button("Login") {
            withAnimation {
                session.signIn()
            }
        }
        .padding()
        .frame(width: 350, height: 50)
        .font(.system(size: 20, weight: .bold, design: .rounded))
        .background( in: RoundedRectangle(cornerRadius: 10, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
        .padding(.top, 40)


    }
}

#Preview {
    LoginView()
        .environmentObject( SessionManager())
}
