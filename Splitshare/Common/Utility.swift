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
