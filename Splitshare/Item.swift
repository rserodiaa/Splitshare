//
//  Item.swift
//  Splitshare
//
//  Created by Rahul Serodia on 25/05/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    var order: Int
    
    init(timestamp: Date, order: Int) {
        self.timestamp = timestamp
        self.order = order
    }
}
