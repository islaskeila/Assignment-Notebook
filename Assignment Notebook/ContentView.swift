//
//  ContentView.swift
//  Assignment Notebook
//
//  Created by Keila Islas on 1/30/24.
//

import SwiftUI

struct ContentView: View {
   @ObservedObject var assignmentList = AssignmentList()
    var body: some View {
        NavigationView {
            List {
                ForEach (assignmentList.items) { item in
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
                    assignmentList.items.move(fromOffsets: indices, toOffset: newOffset)
                }
                .onDelete { indexSet in
                    assignmentList.items.remove(atOffsets: indexSet)
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
