//
//  SubscriptionRow.swift
//  Splitshare
//
//  Created by Rahul Serodia on 03/06/25.
//

import SwiftUI

struct SubscriptionRow: View {
    @State var data: SubscriptionModel
    var body: some View {
        HStack {
            Image(data.icon)
                .resizable()
                .scaledToFit()
                .frame(width: 35, height: 35)
            
            Text(data.name)
                .font(Font.customFont(font: .semibold, size: 16))
            Spacer()
            Text("₹\(data.price)")
                .font(Font.customFont(font: .regular, size: 16))
            
        }
        .padding(.horizontal, 35)
        .foregroundColor(.white)
        .frame(width: .screenWidth, height: 60)
        .background(Rectangle()
            .fill(Color(.white).opacity(0.3))
            .cornerRadius(15)
            .padding(.horizontal, 24))
    }
}

#Preview {
    SubscriptionRow(data: SubscriptionModel(["name": "Netflix", "price": "299", "icon": "netflix_logo"]))
}
