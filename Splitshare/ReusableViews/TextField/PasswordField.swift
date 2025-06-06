//
//  PasswordField.swift
//  Splitshare
//
//  Created by Rahul Serodia on 30/05/25.
//

import SwiftUI

struct PasswordField: View {
    @State var headerText: String
    @Binding var password: String
    @State var isSecure: Bool = true

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(headerText)
                .font(Font.customFont(font: .semibold, size: 12))
                .foregroundColor(Colors.lightGray)
                .multilineTextAlignment(.leading)
            
            HStack {
                Group {
                    if isSecure {
                        SecureField("Password", text: $password)
                    } else {
                        TextField("Password", text: $password)
                    }
                }
                .autocapitalization(.none)
                .disableAutocorrection(true)
                
                Button(action: {
                    isSecure.toggle()
                }) {
                    Image(systemName: isSecure ? "eye.slash" : "eye")
                        .foregroundColor(.gray)
                }
            }
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

struct PasswordField_Previews: PreviewProvider {
    @State static var password: String = ""
    static var previews: some View {
        PasswordField(headerText: "Password", password: $password)
    }
}
