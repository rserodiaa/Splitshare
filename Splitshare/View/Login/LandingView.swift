//
//  LandingView.swift
//  Splitshare
//
//  Created by Rahul Serodia on 25/05/25.
//

import SwiftUI

struct LandingView: View {
    @State private var isShowingSignup = false
    @State private var isShowingSignin = false
    var body: some View {
        ZStack {
            Image("welcome_screen")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                GradientButton(title: "Get Started, its free!!") {
                    isShowingSignup = true
                }
                .padding(.bottom)
                
                GradientButton(title: "I Already Have An Account", type: .secondary) {
                    isShowingSignin.toggle()
                }
                .padding(.bottom, 20)
                
                Image("appLogo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: .screenWidth, height: 150)
                    .padding(.bottom, 0)
            }
        }
        .navigationDestination(isPresented: $isShowingSignup) {
                        SocialSignupView()
                    }
        .navigationDestination(isPresented: $isShowingSignin) {
                        SignupView(isSignUpPage: false)
                    }
    }
}

#Preview {
    LandingView()
}
