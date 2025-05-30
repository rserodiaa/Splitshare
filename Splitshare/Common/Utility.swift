//
//  UIExtensions.swift
//  Splitshare
//
//  Created by Rahul Serodia on 25/05/25.
//


import SwiftUI

enum InterFontWeight: String {
    case bold = "Inter-Bold"
    case regular = "Inter-Regular"
    case semibold = "Inter-SemiBold"
    case medium = "Inter-Medium"
}

extension Font {
    static func customFont(font: InterFontWeight = .regular, size: CGFloat) -> Font {
        return custom(font.rawValue, size: size)
    }
}

extension CGFloat {
    static var screenWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    static var screenHeight: CGFloat {
        UIScreen.main.bounds.height
    }
    static var screenSize: CGSize {
        UIScreen.main.bounds.size
    }
    
}

extension Color {
    static let primaryColor = Color("#3498db")
    
    init(hex: String) {
            let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
            var int: UInt64 = 0
            Scanner(string: hex).scanHexInt64(&int)
            let a, r, g, b: UInt64
            switch hex.count {
            case 3: // RGB (12-bit)
                (a, r, g, b) = (255,
                                (int >> 8) * 17,
                                (int >> 4 & 0xF) * 17,
                                (int & 0xF) * 17)
            case 6: // RGB (24-bit)
                (a, r, g, b) = (255,
                                int >> 16,
                                int >> 8 & 0xFF,
                                int & 0xFF)
            case 8: // ARGB (32-bit)
                (a, r, g, b) = (int >> 24,
                                int >> 16 & 0xFF,
                                int >> 8 & 0xFF,
                                int & 0xFF)
            default:
                (a, r, g, b) = (255, 0, 0, 0)
            }
            self.init(
                .sRGB,
                red: Double(r) / 255,
                green: Double(g) / 255,
                blue: Double(b) / 255,
                opacity: Double(a) / 255
            )
        }
}
