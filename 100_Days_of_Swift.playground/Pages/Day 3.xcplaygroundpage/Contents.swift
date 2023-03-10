import UIKit

// ARITHMETIC OPERATORS
  // Operators are the mathematical symbols like + and -. swift has a huge range of them.

  var firstScore = 12
  var secondScore = 4

  let total = firstScore + secondScore
  let different = firstScore - secondScore

  let product = firstScore * secondScore
  let divided = firstScore / secondScore

  // 4 fits into 13 3 times with 1 as the remainder. 1 is returned.
  let remainder = 13 % secondScore

// OPERATOR OVERLOADING: what an operator does depends on the values you use it with.

  let meaningOfLife = 42
  let doubleMeaning = 42 + 42

  let fakers = "fakers gonna "
  let action = fakers + "fake"
  
  let firstHalf = ["John", "Paul"]
  let secondHalf = ["George", "Ringo"]
  let beatles = firstHalf + secondHalf
  /* Swift is type safe which wont let you mix types. You can't add an integer to a string. */

// COMPOUND ASSIGNMENT OPERATORS:
  var score = 95
  score -= 5

  var quote = "The rain in spain falls mainly on the "
  quote += "Spaniards"

// COMPARISON OPERATORS
  // checks if two values are the same
  firstScore == secondScore
  // checks if two valures are not the same
  firstScore != secondScore

  firstScore < secondScore
  firstScore >= secondScore
  // comparisons can be used with Strings as well because there is a natural alphabetical order

// CONDITIONS
  let firstCard = 1
  let secondCard = 1

  if firstCard + secondCard == 2 {
    print("Aces - lucky!")
  } else if firstCard + secondCard == 21 {
    print("Blackjack!")
  } else {
    print("Regular Cards")
  }

// COMBINING CONDITIONS
  // && "and"
  // || "or"

  let age1 = 12
  let age2 = 21

  // wont print since both conditions aren't valid
  if age1 > 18 && age2 > 18 {
    print("Both are over 18!")
  }

  // print is successful
  if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
  }

// TERNARY OPERATOR
  // checks the condition specified in the first value, and if it’s true returns the second value, but if it’s false returns the third value.
  // checking card values above
  print(firstCard == secondCard ? "Cards are the same" : "Cards are different ")
  // above is the same as below. Below is easier to read.
  if firstCard == secondCard {
    print("Cards are the same")
  } else {
    print("Cards are different")
  }

// SWITCH STATEMENTS
  let weather = "sunny"

  switch weather {
    case "rain":
      print("Bring an umbrella")
    case "snow":
      print("Wrap up warm")
    case "sunny":
      print("Wear sunscreen")
    default:
      print("Enjoy your day!")
  }

  // use fallthrough to continue onto the next case- example above return "wear sunscreen" and "enjoy your day!"

// RANGE OPERATORS
// ..< creates ranges up to but excluding the final value
// ... creates ranges up to and including the final value

let testScore = 85

switch testScore {
case ..<50:
  print("You failed!")
case 50..<80:
  print("You did ok")
default:
  print("You did great")
}

//SUMMARY

/*
 1. Swift has operators for doing arithmetic and for comparison; they mostly work like you already know.
 2. There are compound variants of arithmetic operators that modify their variables in place: +=, -=, and so on.
 3. You can use if, else, and else if to run code based on the result of a condition.
 4. Swift has a ternary operator that combines a check with true and false code blocks. Although you might see it in other code, I wouldn’t recommend using it yourself.
 5. If you have multiple conditions using the same value, it’s often clearer to use switch instead.
 6. You can make ranges using ..< and ... depending on whether the last number should be excluded or included.
 */
