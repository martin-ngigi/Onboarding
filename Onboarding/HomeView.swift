//
//  HomeView.swift
//  Onboarding
//
//  Created by Martin Wainaina on 22/05/2024.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var session: SessionManager
    
    var body: some View {
        VStack(spacing: 16){
            Text("Hello")
                .font(.system(size: 20,
                              weight: .heavy,
                              design: .rounded))
            
            Button("Sign out") {
                session.signOut()
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
        }
    }
}

#Preview {
    HomeView()
        .environmentObject( SessionManager())
}
