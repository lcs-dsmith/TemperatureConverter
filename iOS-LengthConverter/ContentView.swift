//
//  ContentView.swift
//  iOS-LengthConverter
//
//  Created by Dylan Smith on 2021-02-12.
//

import SwiftUI

struct ContentView: View {
    
    @State private var inputValue: String = ""
    
    @State private var inputSystem: String = ""
    
    @State private var outputSystem: String = ""
    
    private var output: String{
        guard let providedValue = Int(inputValue) else {
            return "Please provide a valid number"
        }
        let meterConversion =  convertToMeters(from: inputSystem, of: Double(providedValue))
        let targetConversion = convertToTargetSystem(to: outputSystem, of: meterConversion)
        return "You conversion from \(inputValue) \(inputSystem) to \(outputSystem) is equal to \(targetConversion) \(outputSystem)"
    }
    
    
    var body: some View {
       
        VStack {
            Form{
                
                TextField("Enter your value", text: $inputValue)
                    .keyboardType(.numberPad)
                
                Picker("Starting value", selection: $inputSystem) {
                    Text("KM").tag("km")
                    Text("M").tag("k")
                    Text("CM").tag("cm")
                    Text("MM").tag("mm")
                    Text("MI").tag("mi")
                    Text("YRD").tag("yrd")
                    Text("FT").tag("ft")
                    Text("IN").tag("in")
                }
                .pickerStyle(SegmentedPickerStyle())
                Text("Your starting system is *\(inputSystem)*")
                
                Picker("Starting value", selection: $outputSystem) {
                    Text("KM").tag("km")
                    Text("M").tag("k")
                    Text("CM").tag("cm")
                    Text("MM").tag("mm")
                    Text("MI").tag("mi")
                    Text("YRD").tag("yrd")
                    Text("FT").tag("ft")
                    Text("IN").tag("in")
                }
                .pickerStyle(SegmentedPickerStyle())
                Text("Your target system is *\(outputSystem)*")
                
                Text(output)
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
