//
//  PrimaryButtonModifier.swift
//  Onboarding
//
//  Created by Martin Wainaina on 22/05/2024.
//

import Foundation

import SwiftUI

struct PrimaryButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.white)
            //.frame(width: UIScreen.main.bounds.width - 40, height: 44)
            .frame(maxWidth: .infinity, maxHeight: 44)
            .background(Color.blue)
            .cornerRadius(10)
            //.padding(.top, 24)
    }
}

extension View {
    func primaryButtonModifier() -> some View {
        modifier(PrimaryButtonModifier())
    }
}
