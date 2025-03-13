//
//  SwiftUIView.swift
//  learning_swiftui
//
//  Created by kamila on 13.03.2025.
//

import SwiftUI

struct SwiftUIView: View {
  @State private var isSwitchedOn = false

  var body: some View {
    VStack {
      Toggle(isOn: $isSwitchedOn) {
        Text("Turn me on or off")
      }
      if isSwitchedOn {
        Text("The switch is on!")
      }
    }
    .padding()
  }
}


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
