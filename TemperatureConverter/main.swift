//
//  main.swift
//  TemperatureConverter
//
//  Created by Dylan Smith on 2021-02-02.
//

import Foundation

//Functions
func celsiusToFahrenheit (Value: Double) -> Double {
    let output = (Value * 9 / 5) + 32
    return output
}



while true {
    //MARK: Input
    //Get the value to convert
    let valueToConvert = Double.collectInput(withPrompt: "What is your Temperature value you want to convert? ", minimum: nil , maximum: nil)
    
    //Get what temperature system it is in
    let currentTemperatureSystem = String.collectInput(withPrompt: """
What is your current temperature system.
Celsius (C)
Fahrenheit (F)
Kelvin (K)

""", acceptableValues: ["C", "F", "K"])
    
    let newTemperatureSystem = String.collectInput(withPrompt: """
What temperature system do you want to convert to.
Celsius (C)
Fahrenheit (F)
Kelvin (K)

""", acceptableValues: ["C", "F", "K"])
    
    
    
    //MARK: Process
//Convert to celsius
    let celsiusEquivalent = toBaseUnit(Value: valueToConvert, startingUnit: currentTemperatureSystem)

//Convert to desired outcome
    let output = toDestinationUnit(Value: celsiusEquivalent, destinationUnit: newTemperatureSystem)
    
    
    //MARK: Output
    print("The Temperature is \(output)° \(newTemperatureSystem)")
    
    
    
    
    //MARK: LOOP
    let continueYesOrNO = String.collectInput(withPrompt: "Would you like to calculate again yes or no? ", acceptableValues: ["yes", "no"])
    if continueYesOrNO == "no" {
        exit(0)
    } else {
        continue
    }
}
