//
//  PasswordIndicatorView.swift
//  Splitshare
//
//  Created by Rahul Serodia on 31/05/25.
//

import SwiftUI
struct PasswordStrengthIndicator: View {
    var strength: Int
    var totalIndicators: Int = 4
    
    func fillColor(forStrength strength: Int) -> [Color] {
        switch strength {
        case 1:
            return [.red, .gray, .gray, .gray]
        case 2:
            return [.red, .orange, .gray, .gray]
        case 3:
            return [.red, .orange, .yellow, .gray]
        case 4:
            return [.red, .orange, .yellow, .green]
        default:
            return [.gray, .gray, .gray, .gray]
        }
    }

    var body: some View {
        HStack(spacing: 4) {
            ForEach(0..<totalIndicators, id: \.self) { index in
                GeometryReader { geometry in
                    ZStack(alignment: .leading) {
                        Rectangle()
                            .fill(.gray)
                        Rectangle()
                            .fill(fillColor(forStrength: strength)[index])
                            .frame(width: index < strength ? geometry.size.width : 0,  height: 4)
                    }
                    
                    .animation(.easeOut(duration: 0.5), value: strength)
                }
            }
        }
        .frame(height: 4)
    }
}

struct PasswordStrengthIndicator_Previews: PreviewProvider {
    static var previews: some View {
        PasswordStrengthIndicator(strength: 3)
    }
}
