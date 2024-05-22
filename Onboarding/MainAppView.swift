//
//  MainAppView.swift
//  Onboarding
//
//  Created by Martin Wainaina on 22/05/2024.
//

import SwiftUI

struct MainAppView: View {
    @StateObject private var session = SessionManager()

    var body: some View {
        switch session.currentState {
        case .loggedIn:
            HomeView()
                .environmentObject(session)
                .transition(.opacity)
        default:
            LoginView()
                .environmentObject(session)
                .transition(.opacity)
        }
    }
}

#Preview {
    MainAppView()
}
