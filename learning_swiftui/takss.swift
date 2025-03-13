//
//  takss.swift
//  learning_swiftui
//
//  Created by kamila on 13.03.2025.
//

import SwiftUI

class TaskManager: ObservableObject {
    @Published var tasks = [String]()
    
    func addTask(_ task: String) {
        tasks.append(task)
    }
    
    func removeTasks(at offsets: IndexSet) {
        tasks.remove(atOffsets: offsets)
    }
}

struct TaskListView: View {
    @EnvironmentObject var taskManager: TaskManager
    @State private var newTask = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("New task", text: $newTask)
                    .onSubmit {
                        if !newTask.isEmpty {
                            taskManager.addTask(newTask)
                            newTask = ""
                        }
                    }
                    .padding()
                List {
                    ForEach(taskManager.tasks, id: \.self){ task in
                        Text(task)
                    }
                    .onDelete(perform: taskManager.removeTasks)
                }
            }
        
            .navigationTitle("Task List")
        }
    }
}

struct takss: View {
    @StateObject var taskManager = TaskManager()
    
    var body: some View {
        TaskListView()
            .environmentObject(taskManager)
    }
}


struct takss_Previews: PreviewProvider {
    static var previews: some View {
        takss()
    }
}
