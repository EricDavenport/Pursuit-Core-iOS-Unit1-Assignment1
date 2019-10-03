=\]
## Text-Based-Adventure

## Instructions for lab submission 

1. Fork the assignment repo
1. Clone your Fork to your machine
1. Complete the lab
1. Push your changes to your Fork
1. Submit a Pull Request back to the assignment repo
1. Paste a link to your Pull Request (not your fork!) on Canvas and submit

## Lab 

This lab will build on the skills that you've learned after your first week of programming in Swift!  You will build a command line application that plays a text-based adventure game.  Look [here](https://classicreload.com/zork-i.html) and [here](http://www.bbc.co.uk/programmes/articles/1g84m0sXpnNCv84GpN2PLZG/the-hitchhikers-guide-to-the-galaxy-game-30th-anniversary-edition) for a couple examples of the genre.  Be creative with your app. Apps will be evaluated by the following criteria:   

## App requirements:

<li>Your command line app must build and run with no compiler errors or warnings</li>
<li>Have at least 10 opportunities for the user to make decisions</li>
<li>Have at least one opportunity where the user will enter a number (see converting Strings to numbers)</li>
<li>Use both Switch statements and If/Else Statements</li>
<li>Use both type annotation and type inference to set variables</li>
<li>Use at least one tuple in your code</li>
<li>Use at least range in your code</li>
<li>Use a for loop in your code</li>
<li>Use a while loop in your code</li>
 
 ## Rubric
 
 ![textBasedAdventureRubric.png](./textBasedAdventureRubric.png)

## Hints:

Use the following line to get user input

```swift 
let response = readLine()
//The type of response is Optional String
```

Converting String to a number Type

```swift 
let userEnteredNumAsString = readLine()
let userEnteredNumAsInt = Int(userEnteredNumAsString ?? "") ?? -1
```

Sample code with conditional logic:

```swift
print("Your adventure begins! Choose your direction \"Up\" or \"Down\"") //Use \ to escape characters

let UpOrDown = readLine()
var weapon = "" //Set variables here and you can change and use their values later
var eggExploded = false
switch UpOrDown {
case "Up":
    print("You see a basket of eggs.  How many do you take?")
    let eggNum = readLine()
    let eggNumAsInt = Int(eggNum ?? "") ?? -1
    for currentEgg in 1...eggNumAsInt {
        print("You carefully remove egg number \(currentEgg)")
        if currentEgg == 4 {
            print("It was a trap!  The egg explodes")
                eggExploded = true
        }
    }
    if !eggExploded {
        print("Congrats!  You made it out with \(eggNumAsInt) eggs!")
    }
    //More decisions ahead! Use conditionals and switch statements here

case "Down":
    print("Down you go!")
    //Instructions for the "Down" option ahead!
default:
    print("You stand your ground. Choose a weapon")
    weapon = readLine() ?? ""
    //Fighting conditionals ahead!
}

if weapon != "" {
    print("You survived your first ordeal and even have a \(weapon) to take home")
}
if eggExploded {
    print("Bad luck!  Don't take so many eggs")
}
```

