//
//  SocialSignupView.swift
//  Splitshare
//
//  Created by Rahul Serodia on 29/05/25.
//


import SwiftUI

enum SocialSignupType: String, CaseIterable, Identifiable, Hashable {
    case apple, google, facebook
    var id: String { rawValue }

    var backgroundImage: String {
        switch self {
        case .apple: return "apple_btn"
        case .google: return "google_btn"
        case .facebook: return "fb_btn"
        }
    }

    var icon: String {
        switch self {
        case .apple: return "apple"
        case .google: return "google"
        case .facebook: return "fb"
        }
    }

    var text: String {
        switch self {
        case .apple: return "Sign up with Apple"
        case .google: return "Sign up with Google"
        case .facebook: return "Sign up with Facebook"
        }
    }
    
    var textColor: Color {
        switch self {
        case .apple, .facebook: return .white
        case .google: return .black
        }
    }

    var shadowColor: Color {
        switch self {
        case .apple: return .black.opacity(0.3)
        case .google, .facebook: return Colors.lightGray.opacity(0.5)
        }
    }
}


struct SocialSignupView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Colors.bgColor
                .ignoresSafeArea()
            VStack {
                BackButton()
                
                Spacer()
                
                ForEach(SocialSignupType.allCases) { provider in
                    SocialSignInButton(backgroundImage: provider.backgroundImage,
                                        icon: provider.icon,
                                        text: provider.text,
                                        textColor: provider.textColor,
                                        shadowColor: provider.shadowColor) {
                        print("Tapped \(provider.text)")
                    }
                }
                
                Text("OR")
                    .font(Font.customFont(size: 18))
                    .foregroundColor(.white)
                    .padding([.vertical], 20)
                
                GradientButton(title: "Sign-up with email", type: .secondary) {
                    
                }
                .padding(.bottom, 10)
                
                Text("By registering, you agree to our Terms & Conditions and Privacy Policy of SplitShare")
                    .foregroundColor(Colors.lightGray)
                    .font(Font.customFont(size: 12))
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                    .lineSpacing(3)
                    .padding(.horizontal, 30)
                
                Image("appLogo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: .screenWidth, height: 150)
                
            }
            .ignoresSafeArea(edges: .bottom)
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
    }
}

#Preview {
    SocialSignupView()
}
