//
//  MainAppView.swift
//  Onboarding
//
//  Created by Martin Wainaina on 22/05/2024.
//

import SwiftUI

struct MainAppView: View {
    @EnvironmentObject var session: SessionManager

    var body: some View {
        ZStack {
            switch session.currentState {
            case .loggedIn:
                HomeView()
                    .transition(.opacity)
            case .loggedOut:
                LoginView()
                    .transition(.opacity)
            case .onboarding:
                OnboardingView{
                    session.completeOnboarding()
                }
                    .transition(.asymmetric(insertion: .opacity, removal: .move(edge: .leading)))
            case .signup:
                SignupView()
                    .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .opacity))

            default:
                SplashView()
            }
        }
        .animation(.easeInOut, value: session.currentState)
        .onAppear{
            session.configureCurrentState()
        }
    }
}

#Preview {
    MainAppView()
}
