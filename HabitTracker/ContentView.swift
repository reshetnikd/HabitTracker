//
//  ContentView.swift
//  HabitTracker
//
//  Created by Dmitry Reshetnik on 13.02.2020.
//  Copyright © 2020 Dmitry Reshetnik. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var activities = ActivitiesList()
    @State private var showAddView = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(activities.items) { item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.name)
                                .font(.headline)
                            Text(item.description)
                        }
                    }
                }
            .onDelete(perform: removeItems)
            }
            .navigationBarTitle("Habits")
            .navigationBarItems(leading: EditButton(), trailing:
                Button(action: {
                    self.showAddView = true
                }) {
                    Image(systemName: "plus")
                }
            )
        }
        .sheet(isPresented: $showAddView) {
            AddView(activities: self.activities)
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        activities.items.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
