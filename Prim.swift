//
//  Prim.swift
//  PrimzahliOS
//
//  Created by Dr. Andreas Plagens on 28.04.20.
//  Copyright © 2020 Dr. Andreas Plagens. All rights reserved.
//

import Foundation

func prim() -> String {

var primes: [Int] = [2]
var candidate: Int = 3
let MAX_NUMBER_OF_PRIMES: Int = 40000

func isPrime(candidate: Int) -> Bool {
    let maxTeiler = Int(sqrt(Double(candidate)).rounded())
    for primefactor in primes {
        if primefactor > maxTeiler {
            return true
        }
        if candidate % primefactor == 0 { return false }
    }
    return true
}

primes.reserveCapacity(MAX_NUMBER_OF_PRIMES)

var timer = Date().timeIntervalSince1970

while primes.count <= MAX_NUMBER_OF_PRIMES {
    if isPrime(candidate: candidate) { primes.append(candidate) }
    candidate += 2
}

timer -= Date().timeIntervalSince1970

print(primes)
print(-timer)
    
    return String(-timer)

}

