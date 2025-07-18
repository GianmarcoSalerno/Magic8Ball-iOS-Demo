//
//  Item.swift
//  Magic8Ball-iOS-Demo
//
//  Created by gianmarco salerno on 7/18/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
