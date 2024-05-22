//
//  OnboardingView.swift
//  Onboarding
//
//  Created by Martin Wainaina on 22/05/2024.
//

import SwiftUI

struct OnboardingView: View {
    
    @StateObject private var manager = OnboardingManager()
    
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea()
            if !manager.items.isEmpty {
                TabView{
                    ForEach(manager.items) { item in
                        OnboardingInfoView(item: item)
                    }
                }
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                
               
            }
        }
        .onAppear{
            manager.load()
        }
    }
}

#Preview {
    OnboardingView()
}
