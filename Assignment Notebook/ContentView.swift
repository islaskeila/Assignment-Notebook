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
        NavigationView {
            List {
                ForEach (assignmentItems) { item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.priority)
                                .font(.headline)
                            Text(item.description)
                        }
                        Spacer()
                        Text(item.dueDate, style: .date)
                    }
                }
                .onMove { indices, newOffset in
                    assignmentItems.move(fromOffsets: indices, toOffset: newOffset)
                }
                .onDelete { indexSet in
                    assignmentItems.remove(atOffsets: indexSet)
                }
            }
            .navigationBarTitle("Assignment Notebook", displayMode: .inline)
            .navigationBarItems(leading: EditButton())
        }
        
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
