//
//  PrimaryButton.swift
//  Splitshare
//
//  Created by Rahul Serodia on 25/05/25.
//

import SwiftUI

enum ButtonType {
    case primary
    case secondary
}

struct LoginButton: View {
    var title: String
    var type: ButtonType = .primary
    var onPressed: () -> ()
    
    var body: some View {
        Button {
            
        } label: {
            ZStack {
                Text(title)
                    .font(.customFont(font: .semibold, size: 16))
                    .foregroundColor(.white)
                    .frame(width: .screenWidth - 50, height: 50)
            }
        }
        .background(LinearGradient(
            gradient: Gradient(colors: (type == .primary) ? [Color(hex: "#E6A18F"),
                                                             Color(hex: "#FF826F")] : [Color(hex: "#9E9E9E"), Color(hex: "#757575")]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        )
        .cornerRadius(28)
    }
    
}

struct LoginButton_Previews: PreviewProvider {
    static var previews: some View {
        LoginButton(title: "Get Started", type: .primary) {
            // Action when button is pressed
            
        }
            
    }
}

