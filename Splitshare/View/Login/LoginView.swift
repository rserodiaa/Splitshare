//
//  LoginView.swift
//  Splitshare
//
//  Created by Rahul Serodia on 25/05/25.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack {
            Image("welcome_screen")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                
                Text("Welcome to Splitshare")
                    .font(.customFont(font: .regular, size: 14))
                    .foregroundColor(.white)
                Spacer()
                
                Button {
                    
                } label: {
                    ZStack {
                        Text("Get Started")
                            .font(.customFont(font: .semibold, size: 16))
                            .foregroundColor(.white)
                            .frame(width: .screenWidth - 40, height: 50)
                    }
                        
                    
                }
                .background(LinearGradient(
                    gradient: Gradient(colors: [Color(hex: "#E6A18F"),
                                                Color(hex: "#FF826F")]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
                .cornerRadius(28)
                .padding(.bottom, 20)
                
                
                Image("appLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .screenWidth, height: 150)
                    .padding(.top, 0)

            }
        }
    }
}

#Preview {
    LoginView()
}
