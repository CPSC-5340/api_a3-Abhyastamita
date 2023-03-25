//
// ContentView.swift : Assignment3
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct ContentView: View {
    
    @ObservedObject var itemsvm = ItemsViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(itemsvm.itemsData) { item in
//                    NavigationLink {
//
//                    }
                    ListItemView(sourceResource : item.sourceResource, provider: item.provider, dplaId: item.id)
                }
            }
        }
        .task {
            await itemsvm.fetchData()
        }
        .listStyle(.grouped)
        .navigationTitle("Cats of the Digital Public Library")
        .alert(isPresented: $itemsvm.hasError, error:itemsvm.error) {
            Text("")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
