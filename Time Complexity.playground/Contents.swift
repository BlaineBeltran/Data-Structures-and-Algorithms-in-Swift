import UIKit

/*:
 # Section: Time Complexity
 */
/*:
 ## Constant Time
 
 A constant time algorithm is one that has the same running time regardless of the size of the input
 Notation: O(1)
 */
var foods = ["Pizza", "Burgers", "Chipotle"]
func checkFirstFood(foods: [String]) {
    if let firstFoodItem = foods.first {
        print(firstFoodItem)
    } else {
        print("No Food :(")
    }
}
/*:
 The **checkFirstFood** function only checks the first item in the array, so no matter how many items you put into the array, the run time remains constant.
 ![Constant Time](constantTime.png)
 */

/*:
 ## Linear Time
 
 A linear time algorithm is one where as the input size increases, the runtime increases at the same amount
 Notation: O(n)
 */
var languages = ["Swift", "Python", "Java", "Kotlin"]
func printLanguages(languages: [String]) {
    for language in languages {
        print(language)
    }
}
/*:
 The **printLanguages** function prints all of the languages that are in the array. As the size of the array increases, the number of iterations the for loop makes (runtime) increases by the same amount.
 ![Linear Time](linearTime.png)
 */

/*:
 ## Quadratic Time
 
 A quadratic time algorithm is one where the runtime is equal to the square of its input size.
 Notation: O(n^2)
 */
var drinks = ["Water", "Tea", "Soda"]
func printDrinks(languages: [String]) {
    for _ in drinks {
        for drink in drinks {
            print(drink)
        }
    }
}
/*:
 The **printDrinks** function will print out the drink name for every drink in the array. This will result in 9 print statements.
 ![Quadrtic Time](quadraticTime.png)
 */

/*:
 ## Logarithmic Time
 
 A logarithmic time algorithms is one where the needed comparisons drops by half for each iteration.
 Notation: O(log n)
 */

        
        
        
        
        
