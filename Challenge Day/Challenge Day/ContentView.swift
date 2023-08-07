//
//  ContentView.swift
//  Challenge Day
//
//  Created by PeterPachMu on 3/08/23.
//

import SwiftUI

struct ContentView: View {
    
    @FocusState private var numIsFocused: Bool
    
    @State private var baseTemp = "Celsius"
    @State private var convertTemp = "Kelvin"
    @State private var numTemp = 0.0
    
    let temperature = ["Celsius", "Fahrenheit", "Kelvin"]
    
    var tempResult: Double {
        
        var tempAct: Measurement<UnitTemperature>?
        
        if baseTemp == "Celsius"{
            tempAct = Measurement(value: numTemp, unit: UnitTemperature.celsius)
        }
        else if baseTemp == "Kelvin" {
            tempAct = Measurement(value: numTemp, unit: UnitTemperature.kelvin)
        }
        else if baseTemp == "Fahrenheit"{
            tempAct = Measurement(value: numTemp, unit: UnitTemperature.fahrenheit)
        }
        
        
        switch convertTemp {
        case "Celsius":
            var tempCelsius = tempAct!.converted(to: UnitTemperature.celsius)
            return tempCelsius.value
        case "Fahrenheit":
            var tempFahrenheit = tempAct!.converted(to: UnitTemperature.fahrenheit)
            return tempFahrenheit.value
            
        case "Kelvin" :
            var tempKelvin = tempAct!.converted(to: UnitTemperature.kelvin)
            return tempKelvin.value
        default:
            return numTemp
        }
    }
    
    var body: some View {
        NavigationView{
            Form {
                Section {
                    Picker("Temperature", selection: $baseTemp){
                        ForEach(temperature, id: \.self){
                            Text($0)
                        }
                    }.pickerStyle(.segmented)
                }header: {
                    Text("Select the Temperature")
                }
                
                Section {
                    TextField("Temperature", value:$numTemp, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($numIsFocused)
                } header: {
                    Text("insert the Temperature")
                }
                
                Section {
                    Picker("Temperature", selection: $convertTemp){
                        ForEach(temperature, id: \.self){
                            Text($0)
                        }
                    }.pickerStyle(.segmented)
                }header: {
                    Text("Select the Temperature to convert ")
                }
                
                Section {
                    Text(tempResult,format: .number)
                } header: {
                    Text("Temperature is")
                }
                
                
            }
            .navigationTitle("Temperature Conversion")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
