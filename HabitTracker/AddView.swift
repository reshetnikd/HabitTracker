//
//  AddView.swift
//  HabitTracker
//
//  Created by Dmitry Reshetnik on 13.02.2020.
//  Copyright © 2020 Dmitry Reshetnik. All rights reserved.
//

import SwiftUI

struct AddView: View {
    @State private var name = ""
    @State private var description = ""
    @ObservedObject var activities: ActivitiesList
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)
                
                TextField("Description", text: $description)
            }
        .navigationBarTitle("Add habit")
            .navigationBarItems(trailing: Button("Save") {
                let activity = Activity(name: self.name, description: self.description, completed: 0)
                self.activities.items.append(activity)
                self.presentationMode.wrappedValue.dismiss()
            })
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(activities: ActivitiesList())
    }
}
