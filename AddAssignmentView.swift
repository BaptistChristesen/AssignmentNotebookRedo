//
//  AddAssignmentView.swift
//  AssignmentNotebookRedo
//
//  Created by caden christesen on 4/25/23.
//

import SwiftUI

 struct AddAssignmentView: View {
     @ObservedObject var assignmentList: AssignmentList
     @State private var course = ""
     @State private var description = ""
     @State private var dueDate = Date()
     @Environment(\.presentationMode) var presentationMode
     static let courses = ["Physics", "Mobile Apps", "Math", "Civics", "German", "Data Structures", "English"]
     var body: some View {
         NavigationView {
             Form {
                 Picker("Course", selection: $course) {
                     ForEach(Self.courses, id: \.self) { course in
                         Text(course)
                     }
                 }
                 TextField("Description", text: $description)
                 DatePicker("Due Date", selection: $dueDate, displayedComponents: .date)
             }
             .navigationBarTitle("Add New To-Do Item", displayMode: .inline)
             .navigationBarItems(leading: Button("Save") {
                 if course.count > 0 && description.count > 0 {
                     let item = AssignmentItem(course: course, description: description, dueDate: dueDate)
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

