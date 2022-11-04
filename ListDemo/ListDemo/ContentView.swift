//
//  ContentView.swift
//  ListDemo
//
//  Created by 류창휘 on 2022/10/25.
//

import SwiftUI
struct ContentView: View {
    @State private var showingSheet = false
    @ObservedObject var carStore: CarStore = CarStore(cars: carData)
    var body: some View {
        NavigationView {
            List {
                ForEach (carStore.cars) { car in
                    LIstCell(car: car)
                }
                .onDelete(perform: deleteItems)
                .onMove(perform: moveItems)
            }
            .navigationTitle(Text("EV Cars"))
            .navigationBarItems(leading: Button("Add Car") {
                showingSheet.toggle()
            }.sheet(isPresented: $showingSheet) {
                AddNewCar(carStore: self.carStore)
            }, trailing: EditButton())
        }
    }
    func deleteItems(at offets: IndexSet) {
        carStore.cars.remove(atOffsets: offets)
    }
    func moveItems(from source: IndexSet, to destination : Int) {
        carStore.cars.move(fromOffsets: source, toOffset: destination)
    }
}


struct PracticeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
