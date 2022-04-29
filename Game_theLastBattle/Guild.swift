    //
    //  Guild.swift
    //  Game_theLastBattle
    //
    //  Created by Greg Deveaux on 28/02/2022.
    //

import Foundation


    // -----------------------------------------------------------------------------------------------------
    // MARK: Class Guild
    // >>> Creation of a team of 3 fighters
    // -----------------------------------------------------------------------------------------------------

class Guild {
    
        // number of fighters maximum for each guild
    var sizeMaxFighters: Int
    
        // The guild is composed of fighters
    var fighters: [FighterProtocol] = []
    
        // Recover the damages of guild
    var totalDamagesInfliged = 0
    
        // Recover the heals of guild
    var totalHealsOnYourCompanions = 0
    
    
        // Used to create the guild with n fighters
    init(sizeMaxFighters: Int) {
        self.sizeMaxFighters = sizeMaxFighters
    }
    
    
    
        // Message explaining the creation of the guild, nominative per each player
    func createGuild(of player: Player) {
        
        print ("""
                
        
          ——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
                                   🌑🌑🌑🌑🌑🌒🌓🌔🌕🌕🌕🌕🌕  WELCOME TO THE GUILD "\(player.name.uppercased())"  🌕🌕🌕🌕🌕🌕🌖🌗🌘🌑🌑🌑🌑🌑
          ——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
        
            You have to choose 3 fighters in the list (you can take same or different).
            For that you select the number corresponding to the type of fighter desired and the you give him a name:
              
            \(Wizard().description)
            \(Warrior().description)
            \(Dwarf().description)
              
          ——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
          ——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
        
        """)
            // indicates the number of fighters left to choose
        print(Player.MessageCurrentChoice.first.rawValue)
        
        player.selectYourFighters()
    }
    
    
    
    
        // we call this function after the choice and the naming of 3 fighters of each guilds
    func summaryKindInGuild(_ name: String) {
        var listKindArray: [String] = []
        
        for fighter in fighters {
            let kind = fighter.currentType.rawValue
            listKindArray.append(kind)
        }
        
        let listKind = listKindArray.joined(separator: ", a ")
        
        print("""
          
          Kudos!
          Your guild \(name) is composed of a \(listKind)
          
          
          """)
        
    }
    
    
    
    
        // we verify that all fighters of the guild is dead then we return the value
    func allFightersDead() -> Bool {
        var totalDead = 0
        for fighter in fighters {
            if fighter.dead {
                totalDead += 1
            }
        }
        return totalDead == sizeMaxFighters
    }
    
}
