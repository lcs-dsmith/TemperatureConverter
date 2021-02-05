//
//  main.swift
//  Length Converter
//
//  Created by Dylan Smith on 2021-02-03.
//

import Foundation


// Different measurment types, MM, CM, M, KM, IN, FT, YRD, MI

//MARK: Input
while true {
    print("""
    This program works with the following values:
milimetres (mm)
centimetres (cm)
metres (m)
kilometres (km)
inches (in)
feet (ft)
yards (yrd)
miles (mi)
    """)
    let startingSystem = String.collectInput(withPrompt: "What is your starting system? ", acceptableValues: ["mm", "cm", "m", "km", "in", "ft", "yrd", "mi"])
    
    let targetSystem = String.collectInput(withPrompt: "What is your destination system? ", acceptableValues: ["mm", "cm", "m", "km", "in", "ft", "yrd", "mi"])
    
    let valueToComvert = Double.collectInput(withPrompt: "What is the value you want to convert? ", minimum: 0, maximum: nil)
    
    //MRK: process
    
    let metresValue = convertToMeters(from: startingSystem, of: valueToComvert)
    let convertedValue = convertToTargetSystem(from: targetSystem, of: metresValue)
    
    //MARK: output
    print("You conversion is \(convertedValue) \(targetSystem)")
    
    //MARK: loop
    let continueYesOrNO = String.collectInput(withPrompt: "Would you like to calculate again yes or no? ", acceptableValues: ["yes", "no"])
    if continueYesOrNO == "no" {
        exit(0)
    } else {
        continue
    }
}
