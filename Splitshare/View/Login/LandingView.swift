//
//  LandingView.swift
//  Splitshare
//
//  Created by Rahul Serodia on 25/05/25.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        ZStack {
            Image("welcome_screen")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                Spacer()

                LoginButton(title: "Get Started, its free!!") {
                    
                }
                .padding(.bottom)
                
                LoginButton(title: "I Already Have An Account", type: .secondary) {
                    
                    
                }
                .padding(.bottom, 20)
                
                Image("appLogo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: .screenWidth, height: 150)
                    .padding(.bottom, 0)

            }
        }
    }
}

#Preview {
    LandingView()
}
