//
//  RegistrationManager.swift
//  Onboarding
//
//  Created by Martin Wainaina on 22/05/2024.
//

import Foundation
final class RegistrationManager: ObservableObject {
    
    enum Screen: Int, CaseIterable {
       case username //0
       case age//1
       case bio//2
    }
    
    
    @Published var active: Screen = Screen.allCases.first!
    
    func next() {
        let nextScreenIndex = min(active.rawValue+1, Screen.allCases.last!.rawValue)
        if let screen = Screen(rawValue: nextScreenIndex) {
            active = screen
        }
    }
    
    func previous() {
        let previousScreenIndex = max(active.rawValue-1, Screen.allCases.first!.rawValue)
        if let screen = Screen(rawValue: previousScreenIndex) {
            active = screen
        }
    }
}
