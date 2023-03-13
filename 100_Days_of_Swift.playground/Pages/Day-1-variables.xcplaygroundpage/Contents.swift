import UIKit

var str = "Hello, playground"

str = "goodbye"

var age = 38
var population = 8_000_000

// opening and closing must be """
// This shows line breaks
var strLong = """
This goes over
multiple
"""

//This does not.
var strNotBroken = """
This does not go \
over multiple \
lines
"""

//Double
var double = 3.141
// Bool
var awesome = true

//String interpolation
var score = 85
var scoreOutput = "your score was \(score)"
//print(scoreOutput)

//constants
let taylor = "swift"

// type annotations
let str1 = "hello, playground" // type inference
var album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true


