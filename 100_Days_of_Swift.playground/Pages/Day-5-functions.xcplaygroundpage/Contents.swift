import UIKit

// FUNCTIONS
// functions allow us to re-use code. We can write a function to do something then run the function from other parts of our code.

func printHelp() {
  let message = """
Welcome to MyApp!

Run this app inside a directory of images and \
MyApp will resize them all into thumbnails
"""
  
  print(message)
}

// call the function
printHelp()

// ACCEPTING PARAMETERS
// Swift lets you send values to a function that can then be used inside the function to change the way it behaves.

func square(number: Int) {
  print(number * number)
}
// passes in 8 as the parameter to the function
square(number: 8)
// returns 64

// RETURNING VALUES
func squared(number: Int) -> Int {
  return number * number
}
// assigns returned value to variable
let result = squared(number: 8)
print(result)

// PARAMETER LABELS
// Swift lets us provide two names for each parameter: one to be used externally when calling the function, and one to be used internally inside the function. This is as simple as writing two names, separated by a space.

func sayHello(to name: String) {
  print("Hello, \(name)!")
}
// The parameter is called to name, which means externally it’s called to, but internally it’s called name. This gives variables a sensible name inside the function, but means calling the function reads naturally

sayHello(to: "bingus")

// OMITTING PARAMETER LABELS
func greet(_ human: String){
  print("Hello, \(human)")
}
// underscore in front of human allows you to call greet without having to use parameter name. Although this makes it more confusing. Best practice is to use parameter external names
greet("Steph")

// DEFAULT PARAMETERS
// true is nicely's default parameter
func greeting(_ person: String, nicely: Bool = true) {
  if nicely == true {
    print("Hello, \(person)")
  } else {
    print("oh no, it's \(person) again")
  }
}

greeting("Taylor")
greeting("Taylor", nicely: false)

// VARIADIC FUNCTIONS
// a function that accepts any number of parameters of the same type
// You can make any parameter variadic by writing ... after its type. So, an Int parameter is a single integer, whereas Int... is zero or more integers – potentially hundreds.

func squareFunction(numbers: Int...) {
  for number in numbers {
    print("\(number) squared is \(number * number)")
  }
}

squareFunction(numbers: 1, 2, 3, 4, 5)

// WRITING THROWING FUNCTIONS
// Swift lets us throw errors from functions by marking them as throws before their return type, then using the throw keyword when something goes wrong.

// First we need to define an enum that describes the errors we can throw. These must always be based on Swift’s existing Error type. We’re going to write a function that checks whether a password is good, so we’ll throw an error if the user tries an obvious password:

enum PasswordError: Error {
  case obvious
}

// function will throw an error based on the enum we established before. Must use throws in the return value and throw with the enum and case in the body
func checkPassword(_ password: String) throws -> Bool {
  // will throw an error is password is password
  if password == "password" {
    throw PasswordError.obvious
  }
  return true
}

// RUNNING THROW FUNCTIONS
// do starts a section of code that might cause problems
// try is used before every function that might throw an error
// catch lets you handle errors gracefully

// if any errors are thrown in the do block, execution jumps to the catch block

do {
  try checkPassword("password")
  print ("That password is good!")
} catch {
  print("You can't use that password.")
}

// you can't use that password is printed because the error is thrown.

// INOUT PARAMETERS

// All parameters passed into a Swift function are constants, so you can’t change them. If you want, you can pass in one or more parameters as inout, which means they can be changed inside your function, and those changes reflect in the original value outside the function.

func doubleInPlace(number: inout Int) {
  number *= 2
}

// make a variable integer. You cannot use constant integers with inout because they might be changed.
var myNum = 10
// must use & before to show recognition that it is used as inout
doubleInPlace(number: &myNum)

// --*SUMMARY*--
/*
 
 1. Functions let us re-use code without repeating ourselves.
 2. Functions can accept parameters – just tell Swift the type of each parameter.
 3. Functions can return values, and again you just specify what type will be sent back. Use tuples if you want to return several things.
 4. You can use different names for parameters externally and internally, or omit the external name entirely.
 5. Parameters can have default values, which helps you write less code when specific values are common.
 6. Variadic functions accept zero or more of a specific parameter, and Swift converts the input to an array.
 7. Functions can throw errors, but you must call them using try and handle errors using catch.
 8. You can use inout to change variables inside a function, but it’s usually better to return a new value.

 */
