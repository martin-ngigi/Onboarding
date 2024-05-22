//
//  SessionManager.swift
//  Onboarding
//
//  Created by Martin Wainaina on 22/05/2024.
//

import Foundation

final class SessionManager: ObservableObject {
    enum CurrentState {
        case loggedIn
        case loggedOut
    }
    
    @Published private(set) var currentState: CurrentState?
    
    func signIn() {
        currentState = .loggedIn
    }
    
    func signOut() {
        currentState = .loggedOut
    }
}
