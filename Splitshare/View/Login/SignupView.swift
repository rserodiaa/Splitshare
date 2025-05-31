//
//  SignupView.swift
//  Splitshare
//
//  Created by Rahul Serodia on 30/05/25.
//

import SwiftUI

struct SignupView: View {
    
    @State private var txtEmail: String = ""
    @State private var txtPassword: String = ""
    @State var isSignUpPage: Bool = false
    
    private var passwordStrength: Int {
       getPasswordStrength(txtPassword)
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Colors.bgColor
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                RoundedTextField(headerText: "E-mail Address", text: $txtEmail)
                
                PasswordField(headerText: "Password", password: $txtPassword)
                
                if isSignUpPage {
                     PasswordStrengthIndicator(strength: passwordStrength)
                    .padding(.horizontal, 40)
                    .padding(.bottom, 10)
                    
                    Text("Use 8 or more characters with a mix of letters, numbers & symbols.")
                        .multilineTextAlignment(.leading)
                        .font(Font.customFont(font: .regular, size: 12))
                        .foregroundColor(Colors.lightGray)
                        .padding(.horizontal, 15)
                    
                }
                LoginButton(title: isSignUpPage ? "Get Started, its free!!" : "Sign in") {
                    
                }
                .padding(.bottom, isSignUpPage ? 60 : 200)
                .padding(.top, 10)
                
                if isSignUpPage {
                    Text("OR")
                        .padding(.bottom, 20)
                        .foregroundColor(.white)
                    
                    Text("Do you already have an account?")
                        .font(Font.customFont(font: .regular, size: 12))
                        .foregroundColor(.white)
                        .padding(.bottom, 10)
                    
                    LoginButton(title: "Sign in", type: .secondary) {
                        
                    }
                    .padding(.bottom, 20)
                    
                }
                Image("appLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .screenWidth, height: 150)
                
            }
            .ignoresSafeArea(edges: .bottom)
            
        }
    }
}

#Preview {
    SignupView(isSignUpPage: true)
}
