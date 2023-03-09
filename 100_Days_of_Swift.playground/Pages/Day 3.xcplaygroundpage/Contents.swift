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
