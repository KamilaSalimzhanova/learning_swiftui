//
//  observable.swift
//  learning_swiftui
//
//  Created by kamila on 13.03.2025.
//

import SwiftUI

class UserSettings: ObservableObject {
    @Published var username = "Anonymous"
}

struct observable: View {
    @ObservedObject var settings = UserSettings()
    
    var body: some View {
        VStack {
            Text("Hello, \(settings.username)!")
            Button("Change Username") {
                settings.username = "John Doe"
            }
        }
    }
}


struct observable_Previews: PreviewProvider {
    static var previews: some View {
        observable()
    }
}
