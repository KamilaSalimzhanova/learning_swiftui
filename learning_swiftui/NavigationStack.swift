import SwiftUI

struct MyNavigationStack: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Hi")
                NavigationLink(destination: DetailView()) {
                    Text("Go to Detail View")
                }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("Settings tapped")
                    }) {
                        Text("Settings")
                    }
                }
            }
        }
    }
}

struct DetailView: View {
    var body: some View {
        Text("This is the detail view!")
            .navigationTitle("Detail")
            .navigationBarTitleDisplayMode(.large)
    }
}


struct NavigationStack_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationStack()
    }
}
