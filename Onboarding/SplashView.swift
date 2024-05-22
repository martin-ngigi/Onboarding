//
//  SplashView.swift
//  Onboarding
//
//  Created by Martin Wainaina on 22/05/2024.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea()
            
            VStack(alignment: .center){
                ProgressView()
            }
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    SplashView()
}
