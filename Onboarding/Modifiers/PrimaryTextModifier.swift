//
//  PrimaryTextModifier.swift
//  Onboarding
//
//  Created by Martin Wainaina on 22/05/2024.
//

import Foundation
import SwiftUI

struct PrimaryTextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .frame(width:  UIScreen.main.bounds.width - 40, height: 44)
            .background( in: RoundedRectangle(cornerRadius: 10, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
            .font(.system(size: 13, weight: .bold, design: .rounded))
            .padding(.bottom, 8)
    }
}

extension View {
    func primaryTextModifier() -> some View {
        modifier(PrimaryTextModifier())
    }
}
