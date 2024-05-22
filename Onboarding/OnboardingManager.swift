//
//  OnboardingManager.swift
//  Onboarding
//
//  Created by Martin Wainaina on 22/05/2024.
//

import Foundation

struct OnboardingItem: Identifiable {
    let id = UUID()
    let emoji: String
    let title: String
    let content: String
}


final class OnboardingManager: ObservableObject {
    @Published private(set) var items: [OnboardingItem] = []
    
    func load() {
        items = [
            .init(emoji: "🤝", title: "Join the crew", content: "Handshake. Two hands performing a handshake gesture, indicating a cordial greeting between friends or associates. "),
            .init(emoji: "❤️", title: "Support the crew", content: "A classic red love heart emoji. The red heart ideograph is traditionally used for expressions of love and romance across many cultures."),
            .init(emoji: "🥳", title: "Celebrate the crew", content: "Celebrate the crew and congratulation for joining the crew")
        ]
    }
}
