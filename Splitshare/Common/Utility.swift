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
    
    static func widthPer(per: Double) -> Double {
        return screenWidth * per
    }
    
    static func heightPer(per: Double) -> Double {
        return screenWidth * per
    }
    
    static var topInset: CGFloat {
        let keyWindow = UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .flatMap { $0.windows }
            .first { $0.isKeyWindow }
        return keyWindow?.safeAreaInsets.top ?? 0
    }
    
    static var bottomInset: CGFloat {
        let keyWindow = UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .flatMap { $0.windows }
            .first { $0.isKeyWindow }
        return keyWindow?.safeAreaInsets.bottom ?? 0
    }
        
}

func getPasswordStrength(_ password: String) -> Int {
    var strength = 0
    
    if password.count >= 8 {
        strength += 1
    }
    if password.rangeOfCharacter(from: .decimalDigits) != nil {
        strength += 1
    }
    if password.rangeOfCharacter(from: .lowercaseLetters) != nil &&
        password.rangeOfCharacter(from: .uppercaseLetters) != nil {
        strength += 1
    }
    if password.rangeOfCharacter(from: CharacterSet(charactersIn: "!@#$%^&*")) != nil {
        strength += 1
    }
    return strength
}

enum CustomTabs: String, CaseIterable {
    case home = "house.circle"
    case calendar = "calendar.circle"
    case card = "creditcard.circle"
    case profile = "person.crop.circle"
    
}
