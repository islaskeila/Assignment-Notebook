//
//  AddAssignmentView.swift
//  Assignment Notebook
//
//  Created by Keila Islas on 2/1/24.
//

import SwiftUI

struct AddAssignmentView: View {
    @ObservedObject var assignmentList: AssignmentList
    @State private var courses = ""
    @State private var description = ""
    @State private var dueDate = Date()
    @Environment(\.presentationMode) var presentationMode
    static let courses = ["Math", "English", "Science"]
    
    var body: some View {
        NavigationView {
            Form {
                Picker("Courses", selection: $courses) {
                    ForEach(Self.courses, id: \.self) { course in
                        Text(course)
                    }
                }
                TextField("Description", text: $description)
                DatePicker("Due Date", selection: $dueDate, displayedComponents: .date)
            }
            .navigationBarTitle("Add New Assignment", displayMode: .inline)
            .navigationBarItems(trailing: Button("Save") {
                if courses.count > 0 && description.count > 0 {
                    let item = AssignmentItem(id: UUID(), course: courses, description: description, dueDate: dueDate)
                    assignmentList.items.append(item)
                    presentationMode.wrappedValue.dismiss()
                }
            })
        }
    }
}

struct AddAssignmentView_Previews: PreviewProvider {
    static var previews: some View {
        AddAssignmentView(assignmentList: AssignmentList())
    }
}
