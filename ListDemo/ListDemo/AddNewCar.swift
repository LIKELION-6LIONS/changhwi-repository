//
//  AddNewCar.swift
//  ListDemo
//
//  Created by 류창휘 on 2022/10/25.
//

import SwiftUI

struct AddNewCar: View {
    @Environment(\.dismiss) private var dismiss
    

    @ObservedObject var carStore: CarStore
    @State private var isHybrid = false
    @State private var name: String = ""
    @State private var description : String = ""
    var body: some View {
        Form {
            Section(header: Text("Car Details")) {
                Image(systemName: "car.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                DataInput(title: "Model", userInput: $name)
                DataInput(title: "Description", userInput: $description)
                
                Toggle(isOn: $isHybrid) {
                    Text("Hybrid").font(.headline)
                    
                }.padding()
            }
            Button(action: addNewCar) {
                Text("Add Car")
            }
        }
    }
    func addNewCar() {
        let newCar = Car(id: UUID().uuidString, name: name, description: description, isHybrid: isHybrid, imageName: "tesla_model_3")
        carStore.cars.append(newCar)
        dismiss()
    }
}

struct AddNewCar_Previews: PreviewProvider {
    static var previews: some View {
        AddNewCar(carStore: CarStore(cars: carData))
    }
}
