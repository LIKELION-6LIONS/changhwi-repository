//
//  PracticeView.swift
//  ListDemo
//
//  Created by 류창휘 on 2022/10/25.
//

import SwiftUI

struct ToDoItem: Identifiable {
    var id = UUID()
    var task : String
    var imageName: String
}

var listData: [ToDoItem] = [
    ToDoItem(task: "Wash the car", imageName: "car.fill"),
    ToDoItem(task: "vaccum house", imageName: "house.fill")
]

struct PracticeView: View {
    @State private var toggleStatus = true
    var body: some View {
        NavigationView {
            List {
                
                Section(header: Text("Setting")) {
                    Toggle(isOn: $toggleStatus) {
                        Text("Allow Notification")
                    }
                }
                
                Section(header: Text("To Do Tasks")) {
                    ForEach(listData) { item in
                        NavigationLink(destination: Text(item.task)) {
                            HStack {
                                Image(systemName: item.imageName)
                                Text(item.task)
                            }
                        }
                    }
                    .onDelete(perform: deleteItem)
                    .onMove(perform: moveItem)
                }
            }
            .listStyle(.plain)
            .navigationTitle(Text("To Do List"))
            .navigationBarItems(trailing: EditButton())
        }
    }
}
func deleteItem(at offset: IndexSet) {
    print("indexSet \(offset)")
}
func moveItem(from source: IndexSet, to destination: Int) {
    print("source: \(source)")
    print("destination: \(destination)")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PracticeView()
    }
}
