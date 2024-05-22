//
//  OnboardingApp.swift
//  Onboarding
//
//  Created by Martin Wainaina on 22/05/2024.
//

import SwiftUI

@main
struct OnboardingApp: App {
    
    @StateObject private var session =  SessionManager()
    
    var body: some Scene {
        WindowGroup {
            MainAppView()
                .environmentObject(session)
        }
    }
}
