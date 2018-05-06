//
//  main.swift
//  RSANumbers
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// INPUT
// Collect and filter user input here
var lowerInput = 0
var upperInput = 0

//check for the lower Input
while 1 == 1{
    //print the asking for the lower input
    print("Enter lower limit for range")
    //check is that nil
    guard let givenlowerInput = readLine() else{
        continue
    }
    //check is that integer
    guard let integerLowerInput = Int(givenlowerInput) else {
        continue
    }
    //check is that between 1 and 1000
    if integerLowerInput < 1 || integerLowerInput > 1000 {
        continue
    }
    lowerInput = integerLowerInput
    break //stop the loop
}
print(lowerInput)

//check for the upper Input
while 1 == 1 {
    //print the asking for the upper Input
    print("Enter upper limit for range")
    //check is that nil
    guard let givenUpperInput = readLine() else{
        continue
    }
    //check is that integer
    guard let integerUpperInput = Int(givenUpperInput) else {
        continue
    }
    //check is that between 1 and 1000
    if integerUpperInput < 1 || integerUpperInput > 1000 {
        continue
    }
    //check is that bigger than lower Input
    if integerUpperInput <= lowerInput {
        continue
    }
    upperInput = integerUpperInput
    break //stop the loop
}
print(upperInput)
// PROCESS
// Implement the primary logic of the problem here
var totalOfRAS = 0
var numberOfDivisor = 0
//a number is between lower input and the upper Input
for i in stride(from: lowerInput, through: upperInput, by: 1) {
    for divisor in stride(from: 1, through: i/2, by: 1){
        if i % divisor == 0 {
            numberOfDivisor += 1
        }
        if numberOfDivisor == 4 {
            totalOfRAS += 1
            print("The number between \(lowerInput) and \(upperInput) is \(totalOfRAS)")
        }
    }
}



// OUTPUT
// Report results to the user here
