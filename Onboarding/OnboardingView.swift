//
//  OnboardingView.swift
//  Onboarding
//
//  Created by Martin Wainaina on 22/05/2024.
//

import SwiftUI

struct OnboardingView: View {
    let action: () -> Void
    
    @StateObject private var manager = OnboardingManager()
    @State private var showBtn = false
    
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea()
            if !manager.items.isEmpty {
                TabView{
                    ForEach(manager.items) { item in
                        OnboardingInfoView(item: item)
                            .onAppear{
                                if item == manager.items.last {
                                    withAnimation(.spring().delay(0.25)) {
                                        showBtn = true
                                    }
                                }
                                else {
                                    showBtn = false 
                                }
                            }
                            .overlay(alignment: .bottom) {
                                if showBtn {
                                    Button("Continue") {
                                        action()
                                    }
                                    .padding()
                                    .frame(width: 350, height: 50)
                                    .font(.system(size: 20, weight: .bold, design: .rounded))
                                    .background( in: RoundedRectangle(cornerRadius: 10, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
                                    .offset(y: 50)
                                    .transition(.scale.combined(with: .opacity))
                                }
                            }
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
    OnboardingView{}
}
