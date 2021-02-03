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

func fahrenheitToCelsius (Value: Double) -> Double {
    let output = (Value - 32) * 5 / 9
    return output
}


while true {
    //Input
    //Get the value to convert
    let valueToConvert = Double.collectInput(withPrompt: "What is your Temperature value you want to convert? ", minimum: nil , maximum: nil)
    
    //Get what temperature system it is in
    let currentTemperatureSystem = Int.collectInput(withPrompt: """
What is your current temperature system.
1: Celsius or
2: Fahrenheit
3: Kelvin
""", minimum: 1, maximum: 3)
    
    let newTemperatureSystem = Int.collectInput(withPrompt: """
What temperature system do you want to convert to.
1: Celsius or
2: Fahrenheit
3: Kelvin
""", minimum: 1, maximum: 3)
    
    //Process
    switch currentTemperatureSystem {
    case:
        let Answer = fahrenheitToCelsius(Value: valueToConvert)
        print((Answer), terminator: "")
        print("degrees Celsius")
        
    } else {
        
        let Answer = celsiusToFahrenheit(Value: valueToConvert)
        print((Answer), terminator: "")
        print(" degrees Fahrenheit")
    }
    //Output
    let continueYesOrNO = String.collectInput(withPrompt: "Would you like to calculate again yes or no? ", acceptableValues: ["yes", "no"])
    if continueYesOrNO == "no" {
        break
    } else {
        continue
    }
}
