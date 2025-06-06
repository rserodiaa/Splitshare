//
//  SegmentButton.swift
//  Splitshare
//
//  Created by Rahul Serodia on 02/06/25.
//
import SwiftUI

struct SegmentButton: View {
    @State var title: String
    var isActive: Bool = false
    var animation: Namespace.ID
    var onPressed: (() -> Void)? = nil
    
    var body: some View {
        Button(action: {
            withAnimation(.spring(response: 0.4, dampingFraction: 0.7)) {
                onPressed?()
            }
        }) {
            Text(title)
                .fontWeight(.semibold)
                .foregroundColor(isActive ? .white : .gray)
                .frame(maxWidth: .infinity, minHeight: 50)
                .background(
                    ZStack {
                        if isActive {
                            RoundedRectangle(cornerRadius: 14, style: .continuous)
                                .fill(Color(.white).opacity(0.08))
                                .matchedGeometryEffect(id: "segment", in: animation)
                        }
                    }
                )
        }
        .buttonStyle(.plain)
    }
}

