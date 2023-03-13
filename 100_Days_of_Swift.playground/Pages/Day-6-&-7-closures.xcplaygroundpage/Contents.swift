// CLOSURES - pt 1 & 2

import UIKit

// pt 1

// CREATING BASIC CLOSURES
// closures are create a function and assign it to a variable, call that function using that variable, and even pass that function into other functions as parameters.

let driving = {
  print("i'm driving")
}

driving()

// ACCEPTING PARAMETERS

// closures can accept parameters but they are listed inside the open braces.
// To make a closure accept parameters, list them inside parentheses just after the opening brace, then write in so that Swift knows the main body of the closure is starting.

let drivingAgain = { (place: String) in
  print("i'm driving to \(place)")
}

// you dont have to use parameter labels when running a closure.
drivingAgain("London")

// RETURNING VALUES
// Closures can also return values, and they are written similarly to parameters: you write them inside your closure, directly before the in keyword.

let drivingWithReturn = { (place: String) -> String in
  return "i'm driving to \(place) in my car"
}

let message = drivingWithReturn("Paris")
print(message)

// CLOSURE AS PARAMETERS
// If we wanted to pass a closure into a function so it can be run inside that function, we would specify the parameter type as () -> Void. That means “accepts no parameters, and returns Void” – Swift’s way of saying “nothing”.

// accepts no parameters, and returns Void”
// () -> Void

// For reference:
// let driving = {
//  print("i'm driving")
// }

func travel(action: () -> Void) {
  print("I'm getting ready to go.")
  action()
  print("I arrived!")
}

// passes in driving closure to be used as action
travel(action: driving)

// TRAILING CLOSURE SYNTAX
// If the last parameter to a function is a closure, Swift lets you use special syntax called trailing closure syntax. Rather than pass in your closure as a parameter, you pass it directly after the function inside braces.

travel {
  print("I'm driving here")
}

// pt 2


