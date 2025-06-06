//
//  SubscriptionModel.swift
//  Splitshare
//
//  Created by Rahul Serodia on 02/06/25.
//

import UIKit

struct SubscriptionModel: Identifiable, Equatable {
    var id: UUID = UUID()
    var name: String
    var price: String
    var icon: String
    
    init(_ dict: NSDictionary) {
        self.name = dict["name"] as? String ?? ""
        self.price = dict["price"] as? String ?? ""
        self.icon = dict["icon"] as? String ?? ""
    }
    
    static func == (lhs: SubscriptionModel, rhs: SubscriptionModel) -> Bool {
        return lhs.id == rhs.id
    }
    
}
