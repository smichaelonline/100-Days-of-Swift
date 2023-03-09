import UIKit

// ARRAYS: collections of values that are stored as a single value.

  let john = "John Lennon"
  let paul = "Paul McCartney"
  let george = "George Harrison"
  let ringo = "Ringo Starr"

  let beatles = [john, paul, george, ringo]
  print (beatles)

  // prints George Harrison
  print(beatles[2])


//SETS: Items aren’t stored in any order; they are stored in what is effectively a random order. All items must be unique.

  //you can read values from a set based on their index

  let colors = Set(["red", "green", "blue"])

//TUPLES: store several values together in a single value. You can’t add or remove items from a tuple; they are fixed in size.You can’t change the type of items in a tuple; they always have the same types they were created with. You can access items in a tuple using numerical positions or by naming them, but Swift won’t let you read numbers or names that don’t exist.


  var name = (first: "Taylor", last: "Swift")
  name.0
  name.first

// USES OF ARRAYS, SETS & TUPLES

  // If you need a specific, fixed collection of related values where each item has a precise position or name - TUPLE

  let address = (house: 555, street: "Taylor Swift Ave", city: "Nashville")

  //If you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set:

  let set = Set(["aardvark", "astronaut", "azaelea"])

  // If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array:

  let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

  // Arrarys are the most common!

// DICTIONARIES
  // Collections of values just like arrays, but rather than storing things with an integer position you can access them using anything you want.

  // before the colon - identifiers are called keys and can be used to read data from a dictionary
  let heights = [
    "Taylor Swift" : 1.78,
    "Ed Sheeran" : 1.73
  ]

  heights["Taylor Swift"]

// DICTIONARY DEFAULT VALUES:
  let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
  ]

  favoriteIceCream["Paul"]
  // returns nil
  favoriteIceCream["Charlotte"]
  // returns unknown rather than nil
  favoriteIceCream["Charlotte", default: "Unknown"]

// CREATING EMPTY COLLECTIONS

  //arrays, sets and dictionaries are called collections because they all collect values in one place.

  // empty dictionary
  var teams = [String: String] ()
  // add entries
  teams["Paul"] = "Red"

  // empty array
  var results = [Int]()

  // empty set uses angle bracket syntax (arrays and dictionaries can use this syntax but sets cannot use a + d bracket syntax)
  var words = Set<String>()
  var numbers = Set<Int>()

// ENUMS: a way of defining groups of related values in a way that makes them easier to use.
  
  // prevents use of different strings each time

  enum Result {
    // Simple values
    case success
    case failure
  }
  
  let result1 = Result.failure

// ENUM ASSOCIATED VALUES:
// associated values are additional informations to represent more nuanced data

  enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
  }

  let talking = Activity.talking(topic: "football")
  print(talking)

// ENUM RAW VALUES:
// Assign values to enum cases

enum Planet: Int {
  case mercury = 1
  case venus
  case earth // third planet
  case mars
}

// swift will automatically assign numbers to each case starting from 0
// swift can infer values based on the ones provided

