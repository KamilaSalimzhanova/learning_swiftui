//
//  ListView.swift
//  learning_swiftui
//
//  Created by kamila on 13.03.2025.
//

import SwiftUI

struct MyListView: View {
    let tasks = ["Task 1", "Task 2", "Task 3", "Task 4", "Task 5"]
    
    var body: some View {
        
        NavigationStack {
            List {
                ForEach(tasks, id: \.self) { task in
                    Text(task)
                }
            }
            
            .navigationTitle("List View")
            .navigationBarTitleDisplayMode(.large)
            
            HStack {
                NavigationLink(destination: MyForm()) {
                    Text("Form View")
                }
                Spacer()
                NavigationLink(destination: MyGrid()) {
                    Text("Grid View")
                }
            }
            .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            .foregroundStyle(LinearGradient(colors: [.black, .red, .gray], startPoint: .topLeading, endPoint: .bottomTrailing))
            .fontWeight(.semibold)
        }
        
    }
}

struct MyGrid: View {
    let tasks = ["Task 1", "Task 2", "Task 3", "Task 4", "Task 5"]
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()) ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 20) {
            ForEach(tasks, id: \.self) { item in
                Text(item)
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .background(.blue)
                    .foregroundColor(.white)
            }
        }
        .padding()
    }
}

struct MyForm: View {
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        Form {
            Section(header: Text("Personal Information")) {
                TextField("Username", text: $username)
                TextField("Email", text: $email)
            }
            
            Section(header: Text("Login Credentials")) {
                SecureField("Password", text: $password)
            }
            
            Section {
                Button(action: register) {
                    Text("Register")
                }
            }
        }
        .navigationTitle("Registration Form")
    }
    
    func register() {
        // Implement registration functionality here
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        MyListView()
    }
}
