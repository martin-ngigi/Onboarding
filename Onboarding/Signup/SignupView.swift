//
//  SignupView.swift
//  Onboarding
//
//  Created by Martin Wainaina on 22/05/2024.
//

import SwiftUI

struct SignupView: View {
    @EnvironmentObject var session: SessionManager
    @StateObject private var manager = RegistrationManager()
    @State private var showPrevBtn = false
    @State private var showTerms = false
    @State private var isRegistering = false
    
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea()
            
            TabView(selection: $manager.active) {
                
                UsernameView(text: $manager.user.username){
                    manager.validateUsername()
                    if !manager.hasError {
                        manager.next()
                    }
                }
                .tag(RegistrationManager.Screen.username)
                
                AgeView(age: $manager.user.age, action: manager.next)
                    .tag(RegistrationManager.Screen.age)

                BioView(text:  $manager.user.bio){
                    manager.validateBio()
                    if !manager.hasError {
                        showTerms.toggle()
                    }
                }
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
        .alert(isPresented: $manager.hasError, error: manager.error) {
            
        }
        .sheet(isPresented: $showTerms) {
            TermsAgreementView {
                //MARK: Handle registering
                isRegistering = true
                
                // mock loading
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    isRegistering = false
                    session.register()
                }
            }
            .overlay {
                if isRegistering {
                    Color.black.opacity(0.4).ignoresSafeArea()
                    
                    ProgressView()
                        .tint(.white)
                }
            }
            .interactiveDismissDisabled()// Dont dismiss sheet
            .animation(.easeInOut, value: isRegistering)
        }
    }
}

#Preview {
    SignupView()
        .environmentObject(SessionManager())
}
