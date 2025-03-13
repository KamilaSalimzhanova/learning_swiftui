//
//  new_example.swift
//  images_practice
//
//  Created by kamila on 13.03.2025.
//

import SwiftUI

struct AddImage: View {
    let appleUrl = "https://images.pexels.com/photos/1586298/pexels-photo-1586298.jpeg?auto=compress&cs=tinysrgb&w=1200"
    var body: some View {
        AsyncImage(url: URL(string: appleUrl)) { phase in
            switch phase {
            case .empty:
                    ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 500)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.gray.opacity(0.8), lineWidth: 5))
                    .shadow(color: Color.gray, radius: 20, x: 5, y: 5)
                
            case .failure:
                Image(systemName: "photo").imageScale(.large)
            @unknown default:
                EmptyView()
            }
        }
    }
}

struct AddImage_Previews: PreviewProvider {
    static var previews: some View {
        AddImage()
    }
}
