//
//  TermsAgreementView.swift
//  Onboarding
//
//  Created by Martin Wainaina on 23/05/2024.
//

import SwiftUI

struct TermsAgreementView: View {
    let action: () -> Void
    
    var body: some View {
        VStack{
            title
            content
            agreeToTerms
        }
        .padding()
    }
}

private extension TermsAgreementView{
    var title: some View {
        Text("Terms and Conditions")
            .font(.system(.largeTitle, design: .rounded))
            .bold()
    }
    
    var content: some View {
        ScrollView {
            ForEach(Array(repeating: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", count: 10), id: \.self) { item in
                Text(item)
                    .italic()
            }
        }
    }
    
    var agreeToTerms: some View {
        Button("Agree") {
            action()
        }
        .primaryButtonModifier()
    }
}
#Preview {
    TermsAgreementView{}
}
