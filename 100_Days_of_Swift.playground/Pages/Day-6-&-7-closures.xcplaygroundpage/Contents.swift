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

// Using closures as parameters when they accept parameters

// We’ve been using () -> Void to mean “accepts no parameters and returns nothing”, but you can go ahead and fill the () with the types of any parameters that your closure should accept.

func traveling(action: (String) -> Void) {
  print("I'm getting ready to go.")
  action("London")
  print("I arrived!")
}

// using trailing closure syntax
traveling { (place: String) in
  print("I'm going to \(place) in my car")
}


// Using closures as parameters when they return values
// you can replace Void in () -> Void to return a value

func traveled(action: (String) -> String) {
  print("I am planning on going")
  let description = action("London")
  print(description)
  print("I left")
}

traveled { (place: String) -> String in
  return "I went to \(place)"
}


// SHORTHAND PARAMETER NAMES

// swift knows that the parameter and return are both strings so both "String" can be removed from the above
  // left with "place in"
// return can be removed since there is only one line of code which is the return value
// Rather than writing place in we can let Swift provide automatic names for the closure’s parameters. These are named with a dollar sign, then a number counting from 0.
traveled {
  "I went to \($0)"
}
