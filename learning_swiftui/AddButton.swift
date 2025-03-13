//
//  add_button.swift
//  learning_swiftui
//
//  Created by kamila on 13.03.2025.
//

import SwiftUI

struct AddButton: View {
    var body: some View {
        Button {
            print("Button Pressed")
        } label: {
            Text("Press Me!")
                .font(.title3)
                .foregroundColor(.white)
        }
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: [.purple, .pink]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(20)
    }
}

struct AddButton_Previews: PreviewProvider {
    static var previews: some View {
        AddButton()
    }
}
