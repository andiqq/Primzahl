import Foundation

let maxNumberOfPrimes = 10_000_000

var primes = [2]
var candidate = 3
var primesCount = 1

let stopWatch = ContinuousClock()

let duration = stopWatch.measure {
    while primesCount < maxNumberOfPrimes {
        let maxDivisor = Int(sqrt(Double(candidate)).rounded())
        var isPrime = true
        for primefactor in primes {
            if primefactor > maxDivisor { break }
            if candidate % primefactor == 0 {
                isPrime = false
                break
            }
        }

        if isPrime {
            primes.append(candidate)
            primesCount += 1
        }

        candidate += 2
    }
}

print(duration)
