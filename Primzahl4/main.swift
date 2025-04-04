import Foundation

var primes: [Int] = [2]
var candidate: Int = 3
let MAX_NUMBER_OF_PRIMES: Int = 10_000_000

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

//print(primes)
print(-timer)
    

