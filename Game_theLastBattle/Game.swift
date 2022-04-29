    //
    //  Game.swift
    //  Game_theLastBattle
    //
    //  Created by Greg Deveaux on 28/02/2022.
    //

import Foundation


    // -----------------------------------------------------------------------------------------------------
    // MARK: - Classe Game
    // >>> Step to play with the "Game"
    // -----------------------------------------------------------------------------------------------------

class Game {
    
        // Creation of 2 players with one Guild name
    var player1 = Player()
    var player2 = Player()
    
        // fighters currently in the guild
    var fightersInGuild = 0
    
        // number of round in the game
    var round = 0
    
    
        // Message that introduces the game
    func welcomeMessage() {
        print("""
            
                             ····                                           ····                                                ····
                          ···••••···                                     ···••••···                                          ···••••···
                          ···••••···                                     ···••••···                                          ···••••···
                      ·····••••••••·····                             ·····••••••••·····                                  ·····••••••••·····
                      ·····••••••••·····                             ·····••••••••·····                                  ·····••••••••·····
             |—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————|
             |—————————————————————————————————⌘    ⌽———⌽———⌽    Welcome to the last battle    ⌽———⌽———⌽    ⌘——————————————————————————————————————|
             |—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————|
             |                                                                                                                                     |
             |                                                                                                                                     |
             |                                        XXXXXXXXXXXXXX          XXXXXXXXXXX        XXXXXX         XXXXXX     XXXXXXXXXXXXXXXXX       |
             |       ————————————————————————        XXXXXXXXXXXXXXXX        XXXXXXXXXXXXX       XXXXXXX       XXXXXXX     XXXXXXXXXXXXXXXXX       |
             |       ————————————————————————       XXX            XXX      XXX         XXX      XXX  XXX     XXX  XXX     XXX                     |
             |                                      XXX            XXX     XXX           XXX     XXX   XXX   XXX   XXX     XXX                     |
             |       XXXXXX   XX  XX   XXXXXX       XXX                    XXX           XXX     XXX    XXX XXX    XXX     XXX                     |
             |         XX     XX  XX   XX           XXX                    XXX           XXX     XXX     XXXXX     XXX     XXXXXXXXX               |
             |         XX     XXXXXX   XXXX         XXX        XXXXXXX     XXXXXXXXXXXXXXXXX     XXX      XXX      XXX     XXXXXXXXX               |
             |         XX     XX  XX   XX           XXX        XXXXXXX     XXXXXXXXXXXXXXXXX     XXX               XXX     XXX                     |
             |         XX     XX  XX   XXXXXX       XXX            XXX     XXX           XXX     XXX               XXX     XXX                     |
             |                                      XXX            XXX     XXX           XXX     XXX               XXX     XXX                     |
             |       ————————————————————————       XXX            XXX     XXX           XXX     XXX               XXX     XXX                     |
             |       ————————————————————————        XXXXXXXXXXXXXXXX      XXX           XXX     XXX               XXX     XXXXXXXXXXXXXXXXX       |
             |                                        XXXXXXXXXXXXXX       XXX           XXX     XXX               XXX     XXXXXXXXXXXXXXXXX       |
             |                                                                                                                                     |
             |                                                                                                                                     |
             |—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————|
             |————————————————————————————————————————      oº°·.• OpenClassRooms - Project 3 •.·°ºo      —————————————————————————————————————————|
             |——————————————————————————————————————————— — - ·  –⌽– Created by Greg Deveaux –⌽–  · - — ———————————————————————————————————————————|
             |—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————|
                      ·····••••••••·····                              ·····••••••••·····                                 ·····••••••••·····
                      ·····••••••••·····                              ·····••••••••·····                                 ·····••••••••·····
                          ···••••···                                      ···••••···                                         ···••••···
                             ·••·                                            ·••·                                               ·••·
                             ····                                            ····                                               ····
            
            
            
             (☾☽)––.____                      ___.–--––.___                  ___.–--––.___
             |  |       ¯¯¯°––––._____.–––°¯¯¯             ¯¯°––_____.–––°¯¯¯             ¯¯°––_____.–––°¯¯¯/
             |  |                                                                                      ~_.–<=;
             |  |                                                                                           /
             |  |    𝑶𝑵𝑪𝑬 𝑼𝑷𝑶𝑵 𝑨 𝑻𝑰𝑴𝑬… 𝑨 𝑩𝑰𝑮 𝑲𝑰𝑵𝑮 🤴 𝑳𝑶𝑽𝑬𝑫 𝑶𝑭 𝑾𝑯𝑶𝑳𝑬 𝑯𝑰𝑺 𝑲𝑰𝑵𝑮𝑫𝑶𝑴, 𝑾𝑨𝑺              |
             |  |    𝑶𝑵 𝑻𝑯𝑬 𝑽𝑬𝑹𝑮𝑬 𝑶𝑭 𝑫𝑬𝑨𝑻𝑯… 𝑩𝑬𝑭𝑶𝑹𝑬 𝑶𝑭 𝑫𝒀𝑰𝑵𝑮, 𝑯𝑬 S𝑼𝑴𝑴𝑶𝑵𝑬𝑫 𝑯𝑰𝑺 𝑩𝑶𝑻𝑯 𝑪𝑯𝑰𝑳𝑫𝑺         |
             |  |    𝑻𝑶 𝑷𝑹𝑶𝑷𝑶𝑺𝑬𝑫 𝑻𝑯𝑬𝑴 𝑻𝑶 𝑹𝑬𝑨𝑳𝑰𝒁𝑬 𝑨 𝑩𝑰𝑮 𝑻𝑶𝑼𝑹𝑵𝑨𝑴𝑬𝑵𝑻 𝑶𝑭 𝑭𝑰𝑮𝑯𝑻 𝑰𝑵 𝑯𝑰𝑺 𝑯𝑶𝑵𝑶𝑹,          /
             |  |    𝑰𝑵 𝑺𝑾𝑰𝑪𝑯 𝑻𝑯𝑬𝒀 𝑾𝑶𝑼𝑳𝑫 𝑪𝑯𝑶𝑶𝑺𝑬 𝑨 𝑮𝑼𝑰𝑳𝑫 𝑶F 𝑻𝑯𝑹𝑬𝑬 𝑭𝑰G𝑯𝑻𝑬𝑹𝑺 𝑻𝑯𝑨𝑻 𝑻HE𝒀 𝑾𝑰𝑳𝑳         __L
             |  |    𝑹𝑬𝑪𝑹𝑼𝑰𝑻 𝑻𝑯𝑬 𝑺𝑨𝑴𝑬 𝑫𝑨𝒀 𝑰𝑵 𝑾𝑯𝑶𝑳𝑬 𝑻𝑯𝑬 𝑽𝑨𝑳𝑳𝑬𝒀…                                   -¯   |
             |  |                                                                                           |
             |  |    … 𝑻𝑯𝑬 𝑾𝑰𝑵𝑵𝑬𝑹 𝑶𝑭 𝑻𝑯𝑰𝑺 𝑳𝑨𝑺𝑻 𝑩𝑨𝑻𝑻𝑳𝑬 𝑾𝑰𝑳𝑳 𝑩𝑬𝑪𝑶𝑴𝑬 𝑻𝑯𝑬 𝑵𝑬𝑾 𝑪𝑹𝑶𝑾𝑵 𝑷𝑹𝑰𝑵𝑪𝑬            |
             |  |    𝑶𝑹 𝑷𝑹𝑰𝑵𝑪𝑬𝑺𝑺… 👑                                                                      L
             |  |                                                                                            |
             |  |    … 𝒀𝑶𝑼 (𝑻𝑯𝑬 𝑩𝑶𝑻𝑯 𝑷𝑳𝑨𝒀𝑬𝑹𝑺) 𝑨𝑹𝑬 𝑯𝑰𝑺 𝑩𝑶𝑻𝑯 𝑪𝑯𝑰𝑳𝑫𝑺, "𝑻𝑯𝑬 𝑮𝑨𝑴𝑬" 𝑮𝑶 𝑩𝑬𝑮𝑰𝑵 𝑺𝑶𝑶𝑵.       /
             |  |                                                                                           |
             |  |    𝑹𝑬𝑨𝑫𝒀 𝑮𝑶! 𝑮𝑶𝑶𝑫 𝑳𝑼𝑪𝑲! 🍀                                                             ¦
             |  |                                                                                           |
             |  |                                                                                           /
             ĺ__ĺ––.___                     ____.––––.___                      __.––––.___          _.––~<=;
                      ¯¯¯°––––._____.–––°¯¯¯            ¯¯¯°––––._____.–––°¯¯¯           ¯¯¯°––––._____.__|
             
             
             You will soon be able to recruit your fighters in the Valley!
             But, before, you should be take a great name to your Guild
            
            """)
        
        
    }
    
    
    
        // Creation of the Guild of each player
    
    func createAllTheGuilds() {
            // Player 1
        player1.enterTheNameOfGuild(1, nameDifferent: player2)
        player1.guild.createGuild(of: player1)
        player1.guild.summaryKindInGuild(player1.name)
        
            // Player 2
        player2.enterTheNameOfGuild(2, nameDifferent: player1)
        player2.guild.createGuild(of: player2)
        player1.guild.summaryKindInGuild(player2.name)
    }
    
    
        // +++++++OPTION++++++++ version with cards ++++++++++++++++++++
    func presentationGuildsWithCards() {
        print("""

                 –•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––
                 •––•––•–––––––––––––––––––––––•                SUMMARY OF GUILDS                 •–––––––––––––––––––––––•––•––•
                 ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

              """)
        print("  The guild \(player1.name.uppercased()) is composed of :")
        player1.showCardsOfGuild()
        print("")
        print("")
        print("  The guild \(player2.name.uppercased()) is composed of :")
        player2.showCardsOfGuild()
        print("""

                 –•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––•––
                 ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

              """)
    }
    
    
        // we select, here, the principal action of game: attack or heal and  the choice of fighters
    func selectAttackOrHeal(activePlayer: Player, inactivePlayer: Player) {
        
        var wrongLetter = false
        
        print("""
                Guild \(activePlayer.name), you can choose one action in the list:
                - select A -> to attack the fighter enemy.
                - select H -> to heal the fighter companion.
        """)
        repeat {
            if let selectedAction = readLine() {
                
                switch selectedAction.uppercased() {
                    case "A":
                        print(" –⌽–> You have decided to attack \n")
                            // we recover the number of attacker fighter in the list
                        let numberOfAttacker = activePlayer.chooseTheFighter(of: "fighter in your guild", by: activePlayer, weapon: true)
                        
                            // we recover the number of enemy fighter in the list
                        let numberOfEnemy = inactivePlayer.chooseTheFighter(of: "your enemies", by: activePlayer, weapon: false)
                        
                            // we give at attacker his indice
                        var attacker = activePlayer.guild.fighters[numberOfAttacker]
                        
                            // we give at enemy his indice
                        var enemy = inactivePlayer.guild.fighters[numberOfEnemy]
                        
                            // we record the lifepoint before to the explanation to attack
                        let beforeLifepointEnnemy = enemy.lifepoint
                        
                            // we record the lifepoint before to the explanation to attack
                        let beforeLifepointAttacker = attacker.lifepoint
                        
                            // calculate the sum of damages
                        activePlayer.guild.totalDamagesInfliged += attacker.powerAttack
                        
                            // the enemy lose the lifepoint because of the weapon power
                        enemy.lifepoint -= attacker.powerAttack
                        
                            // if the luck gives an zero to power attack the attacker lose 5 lifepoints
                        if attacker.powerAttack == 0 {
                            attacker.lifepoint -= 5
                            activePlayer.guild.fighters[numberOfAttacker].lifepoint = attacker.lifepoint
                        }
                        
                            // If lifepoint equal 0, the fighter is dead but the lifepoint can't be lower than 0
                        if enemy.lifepoint <= 0 {
                            enemy.lifepoint = 0
                            print(" ☠️ Oh no! \(enemy.name) the \(enemy.currentType) not have surviving ☠️ \n")
                        }
                        
                            // we save the remaining lifepoint of chosen fighter in the guild of inactive player
                        inactivePlayer.guild.fighters[numberOfEnemy].lifepoint = enemy.lifepoint
                        
                        
                            // summary of attack
                        if attacker.powerAttack == 0 {
                            print("""
                              ⚡️––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
                              ⚡️  \(attacker.name), your \(attacker.currentType) attack with \(attacker.nameWeapon) with a power of \(attacker.powerAttack)
                              ⚡️––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
                              ⚡️  \(activePlayer.textRandomWeapon)
                              ⚡️––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
                              ⚡️  Your fighter, \(attacker.name), had \(beforeLifepointAttacker) before the FAILED ATTACK, now he has left \(attacker.lifepoint)
                              ⚡️––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
                              
                              
                              """)
                        } else {
                            print("""
                              ⚡️––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
                              ⚡️  \(attacker.name), your \(attacker.currentType) attack with \(attacker.nameWeapon) with a power of \(attacker.powerAttack)
                              ⚡️––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
                              ⚡️  \(activePlayer.textRandomWeapon)
                              ⚡️––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
                              ⚡️  Your ennemy, \(enemy.name), had \(beforeLifepointEnnemy) before the attack, now he has left \(enemy.lifepoint)
                              ⚡️––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
                              
                              
                              """)
                        }
                        
                        wrongLetter = false
                        
                    case "H":
                        print(" –⌽–> You want heal the companion \n")
                        
                            // we verify that there are still 2 fighters is alives
                        var fighterIsDead = 0
                        for fighter in activePlayer.guild.fighters {
                            if fighter.dead {
                                fighterIsDead += 1
                            }
                        }
                        
                        if fighterIsDead < activePlayer.guild.sizeMaxFighters - 1 {
                            
                                // we recover the number of healer fighter in the list of player
                            let numberOfHealer = activePlayer.chooseTheFighter(of: "healer in your guild", by: activePlayer, weapon: false)
                            
                                // we recover the number of companion fighter in the list of player
                            var numberOfCompanion = activePlayer.chooseTheFighter(of: "your companions", by: activePlayer, weapon: false)
                            
                                // we give at healer his indice
                            let healer = activePlayer.guild.fighters[numberOfHealer]
                            
                                // we give at hurt companion his indice
                            var companion = activePlayer.guild.fighters[numberOfCompanion]
                            
                                // we record the lifepoint before to the explanation to attack
                            let beforeLifepointCompanion = companion.lifepoint
                            
                                // The healer cannot choose himself as hurt fighter
                            if numberOfHealer == numberOfCompanion {
                                print(" ⚠️ you cannot care the healer, select another fighter, please ⚠️ \n")
                                
                                    // we recover the number of companion fighter in the list
                                numberOfCompanion = activePlayer.chooseTheFighter(of: "your companions", by: activePlayer, weapon: false)
                            }
                            
                                // the hurt companion wins of lifepoint
                            companion.lifepoint += healer.heal
                            
                            if companion.currentType == .wizard {
                                if companion.lifepoint >= Wizard().lifepoint {
                                    companion.lifepoint = Wizard().lifepoint
                                }
                            }
                            else if companion.currentType == .warrior {
                                if companion.lifepoint >= Warrior().lifepoint {
                                    companion.lifepoint = Warrior().lifepoint
                                }
                            }
                            else if companion.currentType == .dwarf {
                                if companion.lifepoint >= Dwarf().lifepoint {
                                    companion.lifepoint = Dwarf().lifepoint
                                }
                            }
                            
                            activePlayer.guild.totalHealsOnYourCompanions += (companion.lifepoint - beforeLifepointCompanion)
                            
                            print("""
                                  ❤️‍🩹––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
                                  ❤️‍🩹  \(healer.name), your \(healer.currentType) heal with \(healer.heal)
                                  ❤️‍🩹––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
                                  ❤️‍🩹  \(companion.name), your companion had \(beforeLifepointCompanion) before the care, now he has \(companion.lifepoint)
                                  ❤️‍🩹––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
                                  
                                  
                                  """)
                            
                                // we save the remaining lifepoint of chosen fighter in the guild of active player
                            activePlayer.guild.fighters[numberOfCompanion].lifepoint = companion.lifepoint
                            wrongLetter = false
                        } else {
                            print(" ⚠️ your fighters cannot heal because they are dead, select attack! ⚠️ ")
                            print(" –⌽–> you can only select attack!")
                            wrongLetter = true
                        }
                        
                    default:
                        print(" ⚠️ Wrong letter, try again! ⚠️ ")
                        print(" –⌽–> select the letter A or H")
                        wrongLetter = true
                }
            }
        } while wrongLetter
    }
    
    
    
        // Start the fight with a loop until one whole team dead
    func goFight() {
        
        print("""
            
            
              XXXXXX  XX   XX  XXXXXX     XXXXXX  XXXX  XXXXXXX  XX   XX  XXXXXX     XXXXXX   XXXXXX  XXXXXXX  XXXX  XX   XX   XXXXX
                XX    XX   XX  XX         XX       XX   XX       XX   XX    XX       XX   XX  XX      XX        XX   XXX  XX  XX
                XX    XXXXXXX  XXXX       XXXX     XX   XX  XXX  XXXXXXX    XX       XXXXXX   XXXX    XX  XXX   XX   XX X XX   XXXX
                XX    XX   XX  XX         XX       XX   XX   XX  XX   XX    XX       XX   XX  XX      XX   XX   XX   XX  XXX      XX
                XX    XX   XX  XXXXXX     XX      XXXX  XXXXXXX  XX   XX    XX       XXXXXX   XXXXXX  XXXXXXX  XXXX  XX   XX  XXXXX
            
            
            """)
        
            // Quit loop when the whole fighters of one guild are dead
    outerLoop: while true {
        
        round += 1 // init round number 1
        print("||||||||||||||||||||||||||||||||||||||||||||||||||||| ROUND \(round) ||||||||||||||||||||||||||||||||||||||||||||||||||||| \n")
        
        for _ in 1...2 {
                // the first player begins the round
            selectAttackOrHeal(activePlayer: player1, inactivePlayer: player2)
            
                // if player 2 win
            if player1.guild.allFightersDead() {
                gameOver(looser: player1)
                andTheWinnerIs(player2)
                break outerLoop   // we exit of loop
            }
                // if player 1 win
            if player2.guild.allFightersDead() {
                gameOver(looser: player2)
                andTheWinnerIs(player1)
                break outerLoop   // we exit of loop
            }
            
            swap(&player1, &player2)
        }
        
    }
    }
    
    
    
    func selectPlayAgain() -> Bool {
        print("•••  Do you want to play again ?  •••")
        print("•••  write Y (for Yes) or N (for No)  •••")
        
            // Ask the players, if they play a new game
        while true {
            if let playAgain = readLine() {
                switch playAgain.uppercased() {
                    case "Y":
                        print("Play again")
                        return true
                        
                    case "N":
                        print("Hasta la vista, Baby!")
                        return false
                        
                    default:
                        print("⚠️ Wrong letter, try again! ⚠️ ")
                        print("select the letter Y or N")
                }
            }
        }
    }
    
    
    
    
        // Stop fight, declare the winner and present the result of fight
    func gameOver(looser: Player) {
        
            // we verify that all the fighters are dead in the guild of one player
        print("\n ☠️☠️☠️ \(looser.name), all your Fighters are dead! ☠️☠️☠️")
        
        print("""
            
            
              XXXXXXX    XXX    XX   XX  XXXXXX      XXXXX   XX     XX  XXXXX    XXXXXX
              XX       XX   XX  XXX XXX  XX         XX   XX  XX     XX  XX       XX   XX
              XX  XXX  XXXXXXX  XX X XX  XXXX       XX   XX   XX   XX   XXXX     XXXXXX
              XX   XX  XX   XX  XX   XX  XX         XX   XX    XX XX    XX       XX  XX
              XXXXXXX  XX   XX  XX   XX  XXXXXX      XXXXX      XXX     XXXXXXX  XX   XX
            
            
            """)
        
            // summary of the round
        print("  –⌽–> TOTAL ROUND FOR THE BATTLE: \(round)")
        
            // +++++++OPTION++++++++ version with cards ++++++++++++++++++++
        presentationGuildsWithCards()
        
        print("""
              
        –⌽–> \(player1.name), you have infliged \(player1.guild.totalDamagesInfliged) of damages
        –⌽–> \(player1.name), you have help your companion due to \(player1.guild.totalHealsOnYourCompanions) of heal
        
        –⌽–> \(player2.name), you have infliged \(player2.guild.totalDamagesInfliged) of damages
        –⌽–> \(player2.name), you have help your companion due to \(player2.guild.totalHealsOnYourCompanions) of heal
        
        """)
    }
    
    
    
    
    func andTheWinnerIs(_ player: Player) {
        
            // name = 112 characters possible
        let maxlengthNamePossible = 112
        
            // add the name at the sentence
        let sentence = "··•··•··•··•··•··• ⌘  🏆 \(player.name) WINS THE GAME 🏆  ⌘ •··•··•··•··•··•··"
        
        var space = ""
        
            // calculate the necessary space on each side
        var nameModifiedForWinner: String {
            let lengthName = sentence.count
            let differenceOfLength = maxlengthNamePossible - lengthName
            
            for _ in 1...differenceOfLength / 2 {
                space += " "
            }
            return space + sentence + space
        }
        
            // if that the case, the other player wins the game
        print("""
                 
                ··                                  ··                                  ··                                  ··
               ····                                ····                                ····                                ····
              ··••··                              ··••··                              ··••··                              ··••··
             ··•··•··             ··             ··•··•··             ··             ··•··•··             ··             ··•··•··
            ··•····•··           ·••·           ··•····•··           ·••·           ··•····•··           ·••·           ··•····•··
           ··•··••··•··        ·•····•·        ··•··••··•··        ·•····•·        ··•··••··•··        ·•····•·        ··•··••··•··
          ··•··••••··•··      ·•··••··•·      ··•··••••··•··      ·•··••··•·      ··•··••••··•··      ·•··••··•·      ··•··••••··•··
         ··•··••••••··•··    ·•··••••··•·    ··•··••••••··•··    ·•··••••··•·    ··•··••••••··•··    ·•··••••··•·    ··•··••••••··•··
        ··•··••••••••··•··  ·•··••··••··•·  ··•··••••••••··•··  ·•··••··••··•·  ··•··••••••••··•··  ·•··••··••··•·  ··•··••••••••··•··
        ··•··••••••••··•··  ·•··•····•··•·  ··•··••••••••··•··  ·•··•····•··•·  ··•··••••••••··•··  ·•··•····•··•·  ··•··••••••••··•··
        ··•··••••••••··•··•··•··••··••··•··•··•··••••••••··•··•··•··••··••··•··•··•··••••••••··•··•··•··••··••··•··•··•··••••••••··•··
         ··•··••••••··•··•••··•··••••··•··•••··•··••••••··•··•••··•··••••··•··•••··•··••••••··•··•••··•··••••··•··•••··•··••••••··•··
          ··•···••···•··•••••··•··••··•··•••••··•···••···•··•••••··•··••··•··•••••··•···••···•··•••••··•··••··•··•••••··•···••···•··
         ··•••······•··•••••••··•····•··•••••••··•······•··•••••••··•····•··•••••••··•······•··•••••••··•····•··•••••••··•······•••··
         ··••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••··
         ··••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••··
         ··••··                                                                                                                ··••··
         ··•··\(nameModifiedForWinner)··•··
         ··•··                                                                                                                    •··
         ··•··                 👑 The crown is yours… The king places it on your head… 🤴 you are the new king.                 ··•··
         ··••··                                                                                                                ··••··
         ··••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••··
          ···••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••···
            ······················································································································
        
        
        
        
        """)
    }
    
}
