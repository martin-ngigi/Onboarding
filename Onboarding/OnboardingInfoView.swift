//
//  OnboardingInfoView.swift
//  Onboarding
//
//  Created by Martin Wainaina on 22/05/2024.
//

import SwiftUI

struct OnboardingInfoView: View {
    let item: OnboardingItem
    
    var body: some View {
        VStack{
            Text(item.emoji)
                .font(.system(size: 150))
            
            Text(item.title)
                .font(.system(size: 35,
                              weight: .heavy,
                              design: .rounded))
                .padding(.bottom, 12)
            
            Text(item.content)
                .font(.system(size: 15,
                              weight: .light,
                              design: .rounded))
            
        }
        .multilineTextAlignment(.center)
        .foregroundColor(.white)
        .padding()
    }
}

#Preview {
    OnboardingInfoView(item: .init(emoji: "🤝", title: "Join the crew", content: "Handshake. Two hands performing a handshake gesture, indicating a cordial greeting between friends or associates."))
        .previewLayout(.sizeThatFits)
        .background(.blue)
}
