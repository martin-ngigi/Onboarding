//
//  SignupView.swift
//  Onboarding
//
//  Created by Martin Wainaina on 22/05/2024.
//

import SwiftUI

struct SignupView: View {
    @StateObject private var manager = RegistrationManager()
    @State private var showPrevBtn = false
    
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea()
            
            TabView(selection: $manager.active) {
                
                UsernameView(action: manager.next)
                    .tag(RegistrationManager.Screen.username)
                
                AgeView(action: manager.next)
                    .tag(RegistrationManager.Screen.age)

                BioView(action: manager.next)
                    .tag(RegistrationManager.Screen.bio)

            }
            .animation(.easeInOut, value: manager.active)
            .tabViewStyle(.page(indexDisplayMode: .never))
            .padding()
        }
        .overlay(alignment: .topLeading){
            if showPrevBtn{
                Button{
                    manager.previous()
                } label: {
                    Image(systemName: "chevron.backward")
                        .symbolVariant(.circle.fill)
                        .foregroundColor(.white)
                        .font(.system(size: 35,
                                      weight: .bold,
                                      design: .rounded))
                }
                .padding()
            }
            
        }
        .animation(.easeInOut, value: showPrevBtn)
        .onAppear{
            // Prevent Scrolling to past next screen
            UIScrollView.appearance().isScrollEnabled = false
        }
        .onDisappear{
            // Will enable scrolling on other Views that use ScrollViews i.e. OnBoarding views
            UIScrollView.appearance().isScrollEnabled = true
        }
        .onChange(of: manager.active) { newValue in
            if newValue == RegistrationManager.Screen.allCases.first {
                showPrevBtn = false
            }
            else {
                showPrevBtn = true
            }
            
        }
    }
}

#Preview {
    SignupView()
}
