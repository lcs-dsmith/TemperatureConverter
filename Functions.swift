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


//Convert to meters
func convertToMeters(from startingMeasurmentType: String, of value: Double) -> Double {
    var output = 0.0
    switch startingMeasurmentType {
    case "km":
        output = value * 1000
    case "m":
        output = value
    case "cm":
        output = value / 100
    case "mm":
        output = value / 1000
    case "mi":
        output = value / 0.00062137
    case "yrd":
        output = value / 1.0936
    case "ft":
        output = value / 3.2808
    case "in":
        output = value / 39.37
    default:
        exit(0)
    }
    
    return output
}

func convertToTargetSystem(from startingMeasurmentType: String, of value: Double) -> Double {
    var output = 0.0
    switch startingMeasurmentType {
    case "km":
        output = value / 1000
    case "m":
        output = value
    case "cm":
        output = value * 100
    case "mm":
        output = value * 1000
    case "mi":
        output = value * 0.00062137
    case "yrd":
        output = value * 1.0936
    case "ft":
        output = value * 3.2808
    case "in":
        output = value * 39.37
    default:
        exit(0)
    }
    
    return output
}
