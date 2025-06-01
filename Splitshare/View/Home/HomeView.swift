//
//  HomeView.swift
//  Splitshare
//
//  Created by Rahul Serodia on 01/06/25.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedTab = CustomTabs.home.rawValue
    var body: some View {
        ZStack(alignment: .bottom) {
            Color(Colors.lightGray)
            VStack {
                CustomTabView(selectedTab: $selectedTab)
            }
            .padding(.bottom, 20)
        }
        .ignoresSafeArea()
        
    }
}

#Preview {
    HomeView()
}
