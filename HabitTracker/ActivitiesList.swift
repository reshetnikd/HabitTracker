//
//  ActivitiesList.swift
//  HabitTracker
//
//  Created by Dmitry Reshetnik on 13.02.2020.
//  Copyright © 2020 Dmitry Reshetnik. All rights reserved.
//

import Foundation

class ActivitiesList: ObservableObject {
    @Published var items: [Activity]
    
    init() {
        self.items = []
    }
}
