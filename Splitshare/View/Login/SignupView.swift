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
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Colors.bgColor
                  .ignoresSafeArea()
                
            VStack {
                Spacer()

                RoundedTextField(headerText: "E-mail Address", text: $txtEmail)
                
                PasswordField(headerText: "Password", password: txtPassword)
                
                if isSignUpPage {
                    
                    HStack {
                        Rectangle()
                            .fill(Color(hex: "#C70039"))
                            .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 4)
                            .padding(.horizontal, 2)
                        Rectangle()
                            .fill(Color(hex: "#FF5733"))
                            .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 4)
                            .padding(.horizontal, 2)
                        Rectangle()
                            .fill(Color(hex: "#FFC300"))
                            .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 4)
                            .padding(.horizontal, 2)
                        Rectangle()
                            .fill(Color(hex: "#33ff55"))
                            .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 4)
                            .padding(.horizontal, 2)
                        Spacer()
                    }
                    .padding(.horizontal, 30)
                    .padding(.bottom, 10)
                    
                    Text("Use 8 or more characters with a mix of letters, numbers & symbols")
                        .multilineTextAlignment(.leading)
                        .font(Font.customFont(font: .regular, size: 12))
                        .foregroundColor(Colors.lightGray)
                        .padding(.horizontal, 10)
                    
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
    SignupView(isSignUpPage: false)
}
