//
//  AssignmentList.swift
//  Assignment Notebook
//
//  Created by Keila Islas on 1/31/24.
//

import Foundation
class AssignmentList: ObservableObject {
    @Published var items = [AssignmentItem(priority: "Math", description: "Finish equation sheet", dueDate: Date()), AssignmentItem(priority: "English", description: "Finish intro essay", dueDate: Date()), AssignmentItem(priority: "Science", description: "Finish lab")]
}
