import UIKit

// Loops run code repeatedly until a condition evaluates as false

// FOR LOOPS
  let count = 1...10

  // prints each of the numbers in count
  /*
     for number in count {
      print("Number is \(number)")
     }
     
     let albums = ["Red", "1989", "Reputation"]
     
     for album in albums {
      print("\(album) is on Apple Music")
     }
   
   // you can use an _ instead of a constant
     print("Players gonna ")
     
     for _ in 1...5 {
      print("play")
     }
   */

// WHILE LOOPS
  // while: give it a condition to check, and its loop code will go around and around until the condition fails.

  /*
    var number = 1
    while number <= 20 {
      print(number)
      number += 1
    }

    print ("Ready or not, here I come!")
   */


// REPEAT LOOPS
// * not commonly used
// Identical to a while loop except the condition to check is located at the end.

// var number = 1
//
// repeat {
//    print(number)
//    number += 1
//  } while number <= 20
//
//  print("Ready or not - here I come! ")


// EXITING LOOPS
// You can exit a loop at any time using the break keyword
var countDown = 10
while countDown >= 0 {
  print(countDown)
  
  if countDown == 4 {
    print("Lets go now")
    break
  }
  
  countDown -= 1
}

print("Blast off!")

// EXITING MULTIPLE LOOPS
// * If you put a loop inside a loop it’s called a nested loop
