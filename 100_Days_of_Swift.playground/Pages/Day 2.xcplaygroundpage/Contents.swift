import UIKit

var greeting = "Hello, playground"

// Arrays: collections of values that are stored as a single value.

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
print (beatles)

// prints George Harrison
print(beatles[2])


//Sets: Items aren’t stored in any order; they are stored in what is effectively a random order. All items must be unique.

//you can read values from a set based on their index

let colors = Set(["red", "green", "blue"])

//tuples: store several values together in a single value. You can’t add or remove items from a tuple; they are fixed in size.You can’t change the type of items in a tuple; they always have the same types they were created with. You can access items in a tuple using numerical positions or by naming them, but Swift won’t let you read numbers or names that don’t exist.


var name = (first: "Taylor", last: "Swift")
name.0
name.first

// Uses of Arrays, set and tuples

// If you need a specific, fixed collection of related values where each item has a precise position or name - TUPLE

let address = (house: 555, street: "Taylor Swift Ave", city: "Nashville")

//If you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set:

let set = Set(["aardvark", "astronaut", "azaelea"])

// If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array:

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

// Arrarys are the most common!

// Dictionaries
// Collections of values just like arrays, but rather than storing things with an integer position you can access them using anything you want.

// before the colon - identifiers are called keys and can be used to read data from a dictionary
let heights = [
  "Taylor Swift" : 1.78,
  "Ed Sheeran" : 1.73
]

heights["Taylor Swift"]

// Dictionary default values:
let favoriteIceCream = [
  "Paul": "Chocolate",
  "Sophie": "Vanilla"
]

favoriteIceCream["Paul"]
// returns nil
favoriteIceCream["Charlotte"]
// returns unknown rather than nil
favoriteIceCream["Charlotte", default: "Unknown"]
