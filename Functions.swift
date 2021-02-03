//
//  Functions.swift
//  TemperatureConverter
//
//  Created by Dylan Smith on 2021-02-03.
//

import Foundation

//Convet input to Celsius
func toBaseUnit(Value: Double, startingUnit: String) -> Double {
    var output = 0.0
    switch startingUnit {
    case "F":
        output = (Value - 32) * 5 / 9
    case "K":
        output = Value - 273.15
    default:
        output = Value
    }
    return output
}

//Convert to desired system
func toDestinationUnit(Value: Double, destinationUnit: String ) -> Double {
    var output = 0.0
    switch destinationUnit {
    case "F":
        output = (Value * 9 / 5) + 32
    case "K":
        output = Value + 273.15
    default:
        output = Value
    }
    return output
}
