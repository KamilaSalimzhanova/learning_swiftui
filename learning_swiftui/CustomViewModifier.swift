//
//  CustomViewModifier.swift
//  learning_swiftui
//
//  Created by kamila on 13.03.2025.
//

import SwiftUI

struct BoldAndItalicModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .fontWeight(.bold)
      .italic()
  }
}

struct CustomViewModifier: View {
  var body: some View {
    Text("Hello, World!")
      .modifier(BoldAndItalicModifier())
  }
}

struct DiamondShape: Shape {
  func path(in rect: CGRect) -> Path {
    var path = Path()
    let center = CGPoint(x: rect.width / 2, y: rect.height / 2)

    path.move(to: CGPoint(x: center.x, y: 0))
    path.addLine(to: CGPoint(x: rect.width, y: center.y))
    path.addLine(to: CGPoint(x: center.x, y: rect.height))
    path.addLine(to: CGPoint(x: 0, y: center.y))
    path.addLine(to: CGPoint(x: center.x, y: 0))

    return path
  }
}



struct CustomViewModifier_Previews: PreviewProvider {
    static var previews: some View {
        CustomViewModifier()
    }
}

