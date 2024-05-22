//
//  SecondaryButtonModifier.swift
//  Onboarding
//
//  Created by Martin Wainaina on 22/05/2024.
//

import SwiftUI


import SwiftUI

struct SecondaryButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.blue)
            //.frame(width: UIScreen.main.bounds.width - 40, height: 44)
            .frame(maxWidth: .infinity, maxHeight: 44)
            .background(Color.white)
            .cornerRadius(10)
            //.padding(.top, 24)
    }
}

extension View {
    func secondaryButtonModifier() -> some View {
        modifier(SecondaryButtonModifier())
    }
}
