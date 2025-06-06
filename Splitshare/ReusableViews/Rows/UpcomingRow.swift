//
//  UpcomingRow.swift
//  Splitshare
//
//  Created by Rahul Serodia on 03/06/25.
//

import SwiftUI

struct UpcomingRow: View {
    @State var data: SubscriptionModel
    var body: some View {
        HStack {
            ZStack {
                VStack {
                    Text("12")
                        .font(Font.customFont(font: .bold, size: 12))
                        .foregroundColor(Colors.primaryColor)
                    Text("JUN")
                        .font(Font.customFont(font: .semibold, size: 10))
                }
            }
            .frame(width: 40, height: 40)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.white.opacity(0.2), lineWidth: 1)
                )
            .padding(.trailing, 4)
            
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
    UpcomingRow(data: SubscriptionModel(["name": "Netflix", "price": "299", "icon": "netflix_logo"]))
}
