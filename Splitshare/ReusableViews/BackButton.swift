//
//  BackButton.swift
//  Splitshare
//
//  Created by Rahul Serodia on 31/05/25.
//

import SwiftUI

struct BackButton: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        HStack {
            Button(action: { dismiss() }) {
                HStack(spacing: 8) {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 20, weight: .semibold))
                    Text("Back")
                        .font(.customFont(font: .regular, size: 16))
                }
                .foregroundColor(.white)
                .padding(.leading, 16)
                .padding(.top, 16)
            }
            Spacer()
        }
        
    }
    
}

