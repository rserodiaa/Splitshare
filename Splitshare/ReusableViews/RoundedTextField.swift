//
//  RoundedTextField.swift
//  Splitshare
//
//  Created by Rahul Serodia on 30/05/25.
//

import SwiftUI

struct RoundedTextField: View {
    @State var headerText: String
    @Binding var text: String
    var isPassword: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(headerText)
                .font(Font.customFont(font: .semibold, size: 12))
                .foregroundColor(Colors.lightGray)
                .multilineTextAlignment(.leading)
            
            
            TextField("Email", text: $text)
                .padding(.horizontal, 10)
                .font(Font.customFont(font: .regular, size: 16))
                .frame(height: 48)
                .overlay(RoundedRectangle(cornerRadius: 15)
                    .stroke(.white.opacity(0.2), lineWidth: 1))
                .foregroundColor(.white)
                .background(Colors.lightGray.opacity(0.2))
                .cornerRadius(15)
                .padding(.bottom, 10)
        }
        .padding(.horizontal, 30)
        
    }
    
}

struct RoundedTextField_Previews: PreviewProvider {
    @State static var text: String = "Email"
    static var previews: some View {
        RoundedTextField(headerText: "Email", text: $text, isPassword: false)
            
    }
}
