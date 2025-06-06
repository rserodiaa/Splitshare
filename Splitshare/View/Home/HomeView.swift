//
//  HomeView.swift
//  Splitshare
//
//  Created by Rahul Serodia on 01/06/25.
//

import SwiftUI

enum Segment: String, CaseIterable {
    case subscription = "Your Subscription"
    case bills = "Upcomming bills"
}

struct HomeView: View {
    @State private var selectedTab = CustomTabs.home.rawValue
    @State private var selected: Segment = .subscription
    @Namespace private var animation
    @State private var subArr: [SubscriptionModel] =  [SubscriptionModel(["name": "Netflix", "price": "299", "icon": "netflix_logo"]), SubscriptionModel(["name": "Youtube Premuim", "price": "129", "icon": "youtube_logo"]), SubscriptionModel(["name": "One Drive", "price": "399", "icon": "onedrive_logo"]), SubscriptionModel(["name": "Spotify", "price": "79", "icon": "spotify_logo"])]
                                                      
                
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView {
                VStack {
                ZStack {
                    
                    Rectangle()
                        .foregroundColor(Colors.lightGray)
                        .frame(width: .screenWidth, height: .heightPer(per: 1.1))
                        .cornerRadius(30)
                    
                    
                }
                
                HStack(spacing: 0) {
                    ForEach(Segment.allCases, id: \.self) { segment in
                        SegmentButton(title: segment.rawValue, isActive: selected == segment, animation: animation) {
                            selected = segment
                        }
                    }
                }
                .padding(4)
                .background(
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                        .fill(Color(.white).opacity(0.08))
                )
                .padding(.horizontal, 24)
                
                if selected == .subscription {
                    LazyVStack(spacing: 12) {
                        ForEach(subArr, id: \.id) { sub in
                            SubscriptionRow(data: sub)
                        }
                        
                    }
                    .padding(.horizontal, 24)
                }
                    
                    if selected != .subscription {
                        LazyVStack(spacing: 12) {
                            ForEach(subArr, id: \.id) { sub in
                                
                                UpcomingRow(data: sub)
                            }
                            
                        }
                        .padding(.horizontal, 24)
                    }
            }
                .padding(.bottom, 130) // Adjust padding to avoid overlap with the tab view
            }
            .background(Color.black)
            .ignoresSafeArea()
            
            CustomTabView(selectedTab: $selectedTab)
        }
        
    }
}

#Preview {
    HomeView()
}
