//
//  ActivityView.swift
//  HabitTracker
//
//  Created by Dmitry Reshetnik on 13.02.2020.
//  Copyright © 2020 Dmitry Reshetnik. All rights reserved.
//

import SwiftUI

struct ActivityView: View {
    @State var activity: Activity
    
    var body: some View {
        VStack {
            Text(activity.name)
                .font(.headline)
                .padding()
            
            Text(activity.description)
                .font(.subheadline)
            
            HStack {
                Text("\(activity.completed)")
                    .font(.system(size: 48))
                Button(action: {
                    self.activity.completed += 1
                }) {
                    Image(systemName: "plus")
                }
            }
            
            Spacer()
        }
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var item: Activity = Activity(name: "", description: "", completed: 0)
    
    static var previews: some View {
        ActivityView(activity: item)
    }
}
