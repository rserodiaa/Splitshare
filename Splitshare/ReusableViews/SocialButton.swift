//
//  SocialButton.swift
//  Splitshare
//
//  Created by Rahul Serodia on 29/05/25.
//

import SwiftUI

struct SocialSignInButton: View {
    let backgroundImage: String
    let icon: String
    let text: String
    var textColor: Color = .white
    let shadowColor: Color
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            ZStack {
                Image(backgroundImage)
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 20)
                    .frame(width: .screenWidth, height: 50)
                    .shadow(color: shadowColor, radius: 5, y: 3)
                HStack {
                    Image(icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                    Text(text)
                        .font(Font.customFont(font: .semibold, size: 16))
                        .foregroundColor(textColor)
                }
                .padding(.horizontal, 20)
            }
        }
        .padding(.bottom, 10)
    }
}

#Preview {
    SocialSignInButton(
        backgroundImage: "google_btn",
        icon: "google",
        text: "Sign up with Google",
        textColor: .black,
        shadowColor: Colors.lightGray.opacity(0.5)
    ) {
        // Add your action here
    }
}
