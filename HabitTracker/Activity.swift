//
//  Activity.swift
//  HabitTracker
//
//  Created by Dmitry Reshetnik on 13.02.2020.
//  Copyright © 2020 Dmitry Reshetnik. All rights reserved.
//

import Foundation

struct Activity: Identifiable, Codable {
    let id = UUID()
    let name: String
    let description: String
    var completed: Int
}
