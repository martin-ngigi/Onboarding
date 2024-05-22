//
//  CustomButtonView.swift
//  Onboarding
//
//  Created by Martin Wainaina on 22/05/2024.
//

import SwiftUI


struct CustomButtonView: View {
    var buttonName: String
    var width: Double = (UIScreen.main.bounds.width - 40)
    var height: Double = 44
    var icon: String=""
    var foregroundStyle: Color = Color.white
    var backgroundColor: Color = Color.blue
    var onTap: () -> Void
    
    var body: some View {
        Button(action: onTap) {
            HStack {
                Text(buttonName)
                    .font(.headline.weight(.semibold))
                if(!icon.isEmpty){
                    Image(systemName: icon)
                }
                
            }
            .foregroundStyle(foregroundStyle)
            .frame(width: width, height: height)
        }
        //.background(Color(.systemBlue))
        .background(backgroundColor)
        .cornerRadius(10)
        //.padding(.top, 24)
    }
}

#Preview {
    CustomButtonView(buttonName: "ButtonName", icon: "arrow.right") {
        print("You clicked CustomButtonView")
    }
}
