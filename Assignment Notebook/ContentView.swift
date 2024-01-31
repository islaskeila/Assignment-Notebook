//
//  ContentView.swift
//  Assignment Notebook
//
//  Created by Keila Islas on 1/30/24.
//

import SwiftUI

struct ContentView: View {
    @State private var assignmentItems = [AssignmentItem(priority: "High", description: "Walk the dog", dueDate: Date()), AssignmentItem(priority: "Medium", description: "Do the laundry", dueDate: Date()), AssignmentItem(priority: "Low", description: "Do homework")]
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct AssignmentItem: Identifiable {
    var id = UUID ()
    var priority = String()
    var description = String()
    var dueDate = Date()
}
