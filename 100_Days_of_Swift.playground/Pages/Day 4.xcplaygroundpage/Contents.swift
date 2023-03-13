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
/*
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
*/

// EXITING MULTIPLE LOOPS
// * If you put a loop inside a loop it’s called a nested loop

// label the outer loop with outerLoop
/*
outerLoop: for i in 1...10 {
  for j in 1...10 {
    let product = i * j
    print("\(i) * \(j) is \(product)")
    
    // add condition in the inner loop
    if product == 50 {
      print("It's a bullseye")
      break outerLoop
    }
  }
}
*/
// with a normal break only the inner loop would be exited

// SKIPPING ITEMS
// If you just want to skip the current item and continue on to the next one, you should use continue instead.
for i in 1...10 {
  if i % 2 == 1{
    continue
  }
  
  print(i)
}
// The remainder operator figures out how many times 2 fits into each number in our loop, then returns whatever is left over. So, if 1 is left over, it means the number is odd, so we can use continue to skip it.

// INFINITE LOOPS
var counter = 0

while true {
  print (" ")
  counter += 1
  // break is used to exit the loop when counter has gone up enough times.
  if counter == 273 {
    break
  }
}

// It’s common to use while loops to make infinite loops: loops that either have no end or only end when you’re ready. All apps on your iPhone use infinite loops, because they start running, then continually watch for events until you choose to quit them.
// To make an infinite loop, just use true as your condition. true is always true, so the loop will repeat forever. Make sure there is something to exit the loop or you'll make things crash

// --*SUMMARY*--
/*
 1. Loops let us repeat code until a condition is false.
 2. The most common loop is for, which assigns each item inside the loop to a temporary constant.
 3. If you don’t need the temporary constant that for loops give you, use an underscore instead so Swift can skip that work.
 4. There are while loops, which you provide with an explicit condition to check.
 5. Although they are similar to while loops, repeat loops always run the body of their loop at least once.
 6. You can exit a single loop using break, but if you have nested loops you need to use break followed by whatever label you placed before your outer loop.
 7. You can skip items in a loop using continue.
 8. Infinite loops don’t end until you ask them to, and are made using while true. Make sure you have a condition somewhere to end your infinite loops!
 */
