//
//  SessionManager.swift
//  Onboarding
//
//  Created by Martin Wainaina on 22/05/2024.
//

import Foundation

final class SessionManager: ObservableObject {
    
    enum UserDefaultKeys{
        static let hasSessionOnboarding = "hasSessionOnboarding"
        static let hasCompletedSIgnupFlow = "hasCompletedSIgnupFlow"
    }
    
    enum CurrentState {
        case loggedIn
        case loggedOut
        case onboarding
        case signup
    }
    
    @Published private(set) var currentState: CurrentState?
    
    func signIn() {
        currentState = .loggedIn
    }
    
    func signOut() {
        currentState = .loggedOut
    }
    
    func register() {
        signIn()
        UserDefaults.standard.set(true, forKey: UserDefaultKeys.hasCompletedSIgnupFlow)
    }
    
    func completeOnboarding() {
        currentState = .signup
        UserDefaults.standard.set(true, forKey: UserDefaultKeys.hasSessionOnboarding)
    }
    
    func configureCurrentState() {
        let hasCompletedSIgnupFlow = UserDefaults.standard.bool(forKey: UserDefaultKeys.hasCompletedSIgnupFlow)
        let hasCompletedOnboarding = UserDefaults.standard.bool(forKey: UserDefaultKeys.hasSessionOnboarding)
        if hasCompletedSIgnupFlow {
            currentState = .loggedOut
        }
        else {
            currentState = hasCompletedOnboarding ? .signup : .onboarding
        }
    }
}
