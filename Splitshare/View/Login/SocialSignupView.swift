//
//  SocialSignupView.swift
//  Splitshare
//
//  Created by Rahul Serodia on 29/05/25.
//


import SwiftUI

struct SocialSignupView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Color(hex: "#393D47")
                            .ignoresSafeArea()
            VStack {
                Spacer()
                
                Button {
                    
                } label: {
                    ZStack {
                       Image("apple_btn")
                            .resizable()
                            .scaledToFit()
                            .padding(.horizontal, 20)
                            .frame(width: .screenWidth, height: 50)
                            .shadow(color: .black.opacity(0.3), radius: 5, y: 3)
                        HStack {
                            Image("apple")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.blue)
                            
                            
                            Text("Sign up with Apple")
                                .font(Font.customFont(font: .semibold,  size: 16))
                                .foregroundColor(.white)
                        }
                        .padding(.horizontal, 20)
                    }
                }
                .foregroundColor(.black)
                .padding(.bottom, 10)

                
                
                Button {
                    
                } label: {
                    ZStack {
                       Image("google_btn")
                            .resizable()
                            .scaledToFit()
                            .padding(.horizontal, 20)
                            .frame(width: .screenWidth, height: 50)
                            .shadow(color: Color(hex: "#888B8D").opacity(0.5), radius: 5, y: 3)
                        HStack {
                            Image("google")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.blue)
                            
                            
                            Text("Sign up with Google")
                                .font(Font.customFont(font: .semibold,  size: 16))
                        }
                        .padding(.horizontal, 20)
                    }
                }
                .foregroundColor(.black)
                .padding(.bottom, 10)

                
                Button {
                    
                } label: {
                    ZStack {
                       Image("fb_btn")
                            .resizable()
                            .scaledToFit()
                            .padding(.horizontal, 20)
                            .frame(width: .screenWidth, height: 50)
                        HStack {
                            Image("fb")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                            
                            
                            Text("Sign up with Facebook")
                                .font(Font.customFont(font: .semibold, size: 16))
                        }
                        .padding(.horizontal, 20)
                    }
                }
                .foregroundColor(.white)
                .shadow(color: Color(hex: "#888B8D").opacity(0.5), radius: 5, y: 3)

                Text("OR")
                    .font(Font.customFont(size: 18))
                    .foregroundColor(.white)
                    .padding([.vertical], 20)

                LoginButton(title: "Sign-up with email", type: .secondary) {
                    
                }
                .padding(.bottom, 10)
                
                Text("By registering, you agree to our Terms & Conditions and Privacy Policy of SplitShare")
                    .foregroundColor(Color(hex: "#888B8D"))
                    .font(Font.customFont(size: 12))
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                    .lineSpacing(3)
                                
                Image("appLogo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: .screenWidth, height: 150)
                    
            }
            .ignoresSafeArea(edges: .bottom)
        }
        
    }
}

#Preview {
    SocialSignupView()
}
