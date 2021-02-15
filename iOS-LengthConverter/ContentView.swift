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
    
    private var convertedValue: String {
        return inputValue
    }
    
    var body: some View {
       
        VStack {
            Form{
                
                TextField("Enter your value", text: $inputValue)
                
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
