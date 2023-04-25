//
//  AssignmentList.swift
//  AssignmentNotebookRedo
//
//  Created by caden christesen on 4/25/23.
//

import Foundation
 class AssignmentList: ObservableObject {
     @Published var items = [AssignmentItem(course: "Math", description: "HWK", dueDate: Date()),
                             AssignmentItem(course: "English", description: "Sollilloquy analysis", dueDate: Date()),
                             AssignmentItem(course: "Data Sturctures", description: "Catching Plagiraists", dueDate: Date())]
 }
