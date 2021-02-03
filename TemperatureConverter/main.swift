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

func celsiusToKelvin (Value: Double) -> Double {
    let output = Value + 273.15
    return output
}

func kelvinToCelsius (Value: Double) -> Double {
    let output = Value - 273.15
    return output
}

func toBaseUnit(Value: Double, startingUnit: Int) -> Double {
    <#function body#>
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
    case 1:
        let Answer = fahrenheitToCelsius(Value: valueToConvert)
        print((Answer), terminator: "")
        print("degrees Celsius")
        
    case 2:
        let Answer = celsiusToFahrenheit(Value: valueToConvert)
        print((Answer), terminator: "")
        print(" degrees Fahrenheit")
    case 3

    }
    //Output
    let continueYesOrNO = String.collectInput(withPrompt: "Would you like to calculate again yes or no? ", acceptableValues: ["yes", "no"])
    if continueYesOrNO == "no" {
        exit(0)
    } else {
        continue
    }
}
