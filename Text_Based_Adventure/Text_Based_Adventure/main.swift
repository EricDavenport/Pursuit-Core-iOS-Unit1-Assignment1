//
//  main.swift
//  Text_Based_Adventure
//
//  Created by Eric Davenport on 10/1/19.
//  Copyright © 2019 Eric Davenport. All rights reserved.
//

import Foundation


var playerOne: String = ""
//var gameStart: String
var answer: String = ""
var inventory = [String]()
var answer2 = ""
var answer3 = ""


//=================================================GAME START========================================================================

print("Hello player, would you' like to play \"Great Adventure: Text Adventure Edition\" write start to begin or end to leave.")
var gameStart = readLine() ?? ""

if gameStart.lowercased() == "start" {
    print("What may I call you player?")
    playerOne = readLine() ?? " "
} else {
    print("Thank you for trying \"Great Adventure: Text Adventure Edition\"")
    gameStart = ""
}



//==============================================================GAME LOOP=========================================================
repeat {
print("Hello, \(playerOne)  welcome to Great Adventure: Text Adventure Edition")
sleep(2)
    print("Please respond to all questions with its corresponding letter (A || B || C)")

    print("Hello \(playerOne). It's time to get prepared for you date tonight. What would you like to wear?")
    sleep(2)
    print("""
        A - Blazer and pants
        B - Jeans and T-Shirt
        C - Nothing
        """)
    
    sleep(3)
    var answer = readLine()?.uppercased()
    
    if answer == "A" {
        print("Alright \(playerOne), you put on a blazer and pants, hopefully you're not too overdresses. ")
        inventory.append("blazer and pants")// add blazer and pants String to array inventory
    } else if answer == "B" {
        print("Jeans and a t-shirt, can't go wrong with that. YOu should out on those shoes you got the other day with that.")
        inventory.append("jeans and t-shirt")
    } else {
        print("To each it's own. Let's see how this goes 🤷🏾‍♂️")
        inventory.append("nothing")
    }
    
    // inventory.append used to place the outfit into it so the following questions can be asked accordingly
    
//============================================================================================================================
//                                                      Blazer and pants
//============================================================================================================================
    
    if inventory[0] == "blazer and pants" {
        print("You finished getting dressed. Where is dinner?")
        sleep(2)
        print("""
            A - Nacho Factory
            B - Grand Buxx
            C - BurgerQueen
            """)
        answer2 = readLine()!.uppercased()
        if answer2.uppercased() == "A" {
            print("It's taco tuesday at Nacho Factory and your date disagrees with the location.")
        }else if answer2.uppercased() == "B" {
            print("You date thinks thats above budget, but still accepts the destination.")
        }else {
            print("Your date says, \"BurgerQueen, \(playerOne), Im going home, thanks for nothing!! Waste of a fit!!!👊🏾👊🏾👊🏾\"")
        }
        print("You date have taken an interest in you. Do you request a movie, moonlight stroll or go home to finish your text adventure??")
           sleep(2)
           print("""
               A - Ice Cream
               B - Moonlight stroll
               C - Pursuit Life
               """)
        answer3 = readLine()!.uppercased()
        switch answer3.uppercased() {
              case "A":
                  print("Ice cream was a good decision for you and your date, but not so well for your \(inventory[0])")
                  print("You date was so disgusted she went to the bathroom and never returns")
              case "B":
                  print("Moonlight stroll leads to a 😘")
              default:
                  print("Pursuit life, go get that A!!")
              }
           print("You go to take your date home....")
                  sleep(2)
                  print("What happens next?")
                  sleep(2)
                  print("Stay tuned for \"Great Adventure: Text Adventure Edition 2\" coming in 2020")
                  
                  gameStart = ""

        
//============================================================================================================================
//                                                      Jeans an T-shirt
//============================================================================================================================
    } else if inventory[0] == "jeans and t-shirt" {
        print("You finished getting dressed. Where is dinner?")
        sleep(2)
        print("""
            A - Nacho Factory
            B - Grand Buxx
            C - BurgerQueen
            """)
        answer2 = readLine()!.uppercased()
        if answer2.uppercased() == "A" {
            print("It's taco tuesday at Nacho Factory and your date just so happen to love tacos🌮.")
        }else if answer2.uppercased() == "B" {
            print("\"\(playerOne), Oh!!! You know your paying right?\" said your date.")
        }else {
            print("BurgerQueen, \(playerOne), BURGERQUEEN!!!!")
        }
        print("You date have taken an interest in you. Do you request a movie, moonlight stroll or go home to finish your text adventure??")
        sleep(2)
        print("""
            A - Movie
            B - Moonlight stroll
            C - Pursuit Life
            """)
        answer3 = readLine()!
        switch answer3.uppercased() {
        case "A":
            print("You both decide to see a scary movie. Doesn't go well for you and your \(inventory[0]) 💩")
            print("You date was so disgusted she went to the bathroom and never returns")
        case "B":
            print("Moonlight stroll leads to a 😘")
        default:
            print("Pursuit life, go get that A!!")
        }
        
        print("You go to take your date home....")
        sleep(2)
        print("What happens next?")
        sleep(2)
        print("Stay tuned for \"Great Adventure: Text Adventure Edition 2\" coming in 2020")
        
        gameStart = ""

//============================================================================================================================
//                                                     Nothing
//============================================================================================================================

        
    } else if inventory[0] == "nothing" {
        print("Where are you going naked \(playerOne)?")
        sleep(2)
        print("""
            A - Nacho Factory
            B - Grand Buxx
            C - BurgerQueen
            """)
        if answer3.uppercased() == "A" {
            print("It's taco tuesday but when your date got in the car and seen you naked, they ran out in distgust!! 👊🏾👊🏾👊🏾")
            gameStart = ""
        }else if answer3.uppercased() == "B" {
            print("NO CLOTHES NO SERVICE - Your date never entered the vehicle!!")
            gameStart = ""
        }else {
            print("Have fun coding in the nude \(playerOne)!!!")
            sleep(2)
            }
        print("Thank you for playing \"Great Adventure: Text Adventure Edition\" \(playerOne) ✌🏾")
                   gameStart = ""
    }
            gameStart = ""

   } while gameStart == "start"
    
    
    
    
    // Ends the game following the final go
    
    

// I originally was setting up a two player gsme - left the code further down in case it needs to be viewed
// This code was done with the intention of showing my knowledge of understand, not completed for visual plus.

//
//========================================Two Players============================================
//
//repeat {
//print("\(playerOne) and \(playerTwo) welcome to Jungle Adventure: Text Adventure Edition")
//
//print("\(playerOne), walking about 10 feet ahead of \(playerTwo), trips and tumbles down the hill almost off the cliff")
//let answerOne = String(readLine()!)
//
//
//print("\(playerTwo), what do you do?")
//print("""
//    A) Attempt to help \(playerOne) climb back up.
//    B) Go look for help.
//    C) Leave \(playerOne) and continue on the adventure alone.
//""")
//
//switch answerOne {
//case "A" :
//    print("You attempt to help \(playerOne) up and you both fall over to your 💀")
//case "B" :
//    print("You run to find the help near and return with to nothing")
//case "C" :
//    print("\(playerOne) climbs up and throws you down the cliff for leaving them for 💀")
//default:
//    print("That isn't an option")
//    }
//
//    if answerOne == "A" {
//        print("")
//    }
//
//} while howManyPlayers == 2
