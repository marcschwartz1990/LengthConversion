//
//  ContentView.swift
//  LengthConversion
//
//  Created by Marc-Developer on 7/30/22.
//

import SwiftUI

struct ContentView: View {
    @State private var inputUnit = "ft"
    @State private var outputUnit = "m"
    @State private var valueToConvert = 0.0
    
    var metersToKilometers: Double {
        return valueToConvert / 1000
    }
    
    
    let unitsOfMeasurement = ["m", "km", "ft", "yd", "mi"]
    
    // TODO: Display result
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    // Input
                    Picker("Unit of Measurement", selection: $inputUnit) {
                        ForEach(unitsOfMeasurement, id: \.self) {
                            Text("\($0)")
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("Input")
                }
                
                Section {
                    // Output
                    Picker("Unit of Measurement", selection: $outputUnit) {
                        ForEach(unitsOfMeasurement, id: \.self) {
                            Text("\($0)")
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("Output")
                }
                
                Section {
                    // Enter Value Field
                    TextField("Value", value: $valueToConvert, format: .number)
                        .keyboardType(.decimalPad)
                } header: {
                    Text("ENTER VALUE (\(inputUnit))")
                }
                .textCase(nil)
                
                Section {
                    // Conversion Result
                    // TODO: Convert if else statement idea to enum or switch statement?
                    if inputUnit == "m" && outputUnit == "km" {
                        Text(metersToKilometers, format: .number)
                    } else {
                        Text("Coming Soon")
                    }
                } header: {
                    Text("RESULT (\(outputUnit))")
                }
                .textCase(nil)
            }
            .navigationTitle("LengthConversion")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
