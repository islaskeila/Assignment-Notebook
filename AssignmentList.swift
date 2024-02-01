//
//  AssignmentList.swift
//  Assignment Notebook
//
//  Created by Keila Islas on 1/31/24.
//

import Foundation
class AssignmentList: ObservableObject {
    @Published var items = [AssignmentItem(course: "Math", description: "Finish equation sheet", dueDate: Date()), AssignmentItem(course: "English", description: "Finish intro essay", dueDate: Date()), AssignmentItem(course: "Science", description: "Finish lab")]
}
