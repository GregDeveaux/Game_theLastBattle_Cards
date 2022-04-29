    //
    //  Fighters.swift
    //  Game_theLastBattle
    //
    //  Created by Greg Deveaux on 28/02/2022.
    //

import Foundation


    // -----------------------------------------------------------------------------------------------------
    // MARK: Protocol FighterProtocol
    // >>> General characteristics of fighter to join the team
    // -----------------------------------------------------------------------------------------------------

protocol FighterProtocol {
    var currentType:    Kind            { get }         // Either wizard or warrior or dwarf
    var name:           String          { get set }     // Fighter name which must be unique and not yet used
    var lifepoint:      Int             { get set }     // Fighter lifepoint who is different depending on type
    var heal:           Int             { get }         // Fighter heal who is different depending on type
    var weapons:        [Weapon]        { get set }     // Array of weapons for each kind
    var nameWeapon:     String          { get set }     // Name of the weapon used
    var powerAttack:    Int             { get set }     // Power of attack equal at the weapon who depending on type (with random malus >>> possible from 0 to max power of weapon)
    var description:    String          { get }         // Details of the fighter
}

extension FighterProtocol {
    
        // If a fighter has his lifepoint = 0, he's dead
    var dead: Bool {
        lifepoint == 0
    }
    
        // random text by range of power, if zero the attacker will lose 5 lifepoints
    func randomPowerWeaponMessage(_ index: Int) -> String {
        switch powerAttack {
            case 0:
                return "👎 Completely failed attack, you messed up, you lose 5 lifepoints 👎"
            case 1..<(weapons[index].power / 2) :
                return "👍 Ooohh! Not terrible! you will muscle your game, guy, you will do better the next time 👍"
            case (weapons[index].power / 2)..<weapons[index].power :
                return "💪 Wonderfull attack, you are an Artist 💪"
            case weapons[index].power :
                return "👹 Yeah baby yeah! you attack with demoniac power, I like that 👹"
            default:
                return "why not!"
        }
    }
    
}



    // -------------------------------------------------------------------------------------------------------
    // MARK: Enum Kind of Fighters
    // >>> Gives its properties to the fighter
    // -------------------------------------------------------------------------------------------------------

enum Kind: String {
    case wizard
    case warrior
    case dwarf
}



    // -------------------------------------------------------------------------------------------------------
    // MARK: Struct Wizard
    // >>> characteristics of wizard
    // -------------------------------------------------------------------------------------------------------

struct Wizard: FighterProtocol {
    var currentType:    Kind        // Either wizard or warrior or dwarf
    var name:           String      // Fighter name which must be unique and not yet used
    var lifepoint:      Int         // Fighter lifepoint who is different depending on type
    var heal:           Int         // Fighter heal who is different depending on type
    var weapons:        [Weapon]    // Weapons for each kind
    var nameWeapon:     String      // Name of the weapon used
    var powerAttack:    Int         // Power of attack equal at the weapon who depending on type (with random malus >>> possible from 0 to max power of weapon)
    
        // Details of the fighter
    var description:    String  {
        return "·1· -> 🧙‍♂️ Wizard : efficient for first aid (❤️ lifepoint = \(lifepoint) ; ❤️‍🩹 heal = \(heal) ; ⚔️ weapons power to attack: from \(rain.power) to \(fireBall.power) )"
    }
    
        // add 3 specific weapons for the wizards
    var rain = Weapon(name: "Froggy rain", power: 5, numberUse: 50)
    var staff = Weapon(name: "Staff of power", power: 18, numberUse: 3)
    var fireBall = Weapon(name: "Fire ball", power: 35, numberUse: 1)
    
    init() {
        self.currentType   = .wizard
        self.name          = ""
        self.lifepoint     = 20 //normally 100
        self.heal          = 25
        self.weapons       = [rain, staff, fireBall]
        self.nameWeapon    = rain.name
        self.powerAttack   = rain.power
    }
    
}



    // -------------------------------------------------------------------------------------------------------
    // MARK: Struct Warrior
    // >>> characteristics of warrior
    // -------------------------------------------------------------------------------------------------------

struct Warrior: FighterProtocol {
    var currentType:    Kind        // Either wizard or warrior or dwarf
    var name:           String      // Fighter name which must be unique and not yet used
    var lifepoint:      Int         // Fighter lifepoint who is different depending on type
    var heal:           Int         // Fighter heal who is different depending on type
    var weapons:        [Weapon]    // Weapons for each kind
    var nameWeapon:     String      // Name of the weapon used
    var powerAttack:    Int         // Power of attack equal at the weapon who depending on type (with random malus >>> possible from 0 to max power of weapon)
    
        // Details of the fighter
    var description:    String  {
        return "·2· -> 🧝 Warrior : intelligent and agile swordsman, the best in category (❤️ lifepoint = \(lifepoint) ; ❤️‍🩹 heal = \(heal) ; ⚔️ weapons power to attack: from \(oak.power) to \(sword.power) )"
    }
    
        // add 3 specific weapons for the warriors
    var oak = Weapon(name: "Oak stick", power: 10, numberUse: 50)
    var shuriken = Weapon(name: "Shuriken", power: 25, numberUse: 3)
    var sword = Weapon(name: "Sword \"Thunder of fire\"", power: 40, numberUse: 1)
    
        // The different elements that make up the character are initialized
    init() {
        self.currentType    = .warrior
        self.name           = ""
        self.lifepoint      = 25 //normally 100
        self.heal           = 10
        self.weapons        = [oak, shuriken, sword]
        self.nameWeapon     = oak.name
        self.powerAttack    = oak.power
    }
    
}



    // -------------------------------------------------------------------------------------------------------
    // MARK: Struct Dwarf
    // >>> characteristics of wizard
    // -------------------------------------------------------------------------------------------------------

struct Dwarf: FighterProtocol {
    var currentType:    Kind        // Either wizard or warrior or dwarf
    var name:           String      // Fighter name which must be unique and not yet used
    var lifepoint:      Int         // Fighter lifepoint who is different depending on type
    var heal:           Int         // Fighter heal who is different depending on type
    var weapons:        [Weapon]    // Weapons for each kind
    var nameWeapon:     String      // Name of the weapon used
    var powerAttack:    Int         // Power of attack equal at the weapon who depending on type (with random malus >>> possible from 0 to max power of weapon)
    
        // Details of the fighter
    var description:    String  {
        return "·3· -> 🎅 Dwarf : his weapon is devastating and this hurt (❤️ lifepoint = \(lifepoint) ; ❤️‍🩹 heal = \(heal) ; ⚔️ weapons power to attack: from \(volcano.power) to \(ax.power))"
    }
    
        // add 3 specific weapons for the dwarves
    var volcano = Weapon(name: "Volcano Slingshot", power: 25, numberUse: 50)
    var hammer = Weapon(name: "Hammer Dammer", power: 35, numberUse: 3)
    var ax = Weapon(name: "Ax \"Kiss of dragon\"", power: 70, numberUse: 1)
    
        // The different elements that make up the character are initialized
    init() {
        self.currentType    = .dwarf
        self.name           = ""
        self.lifepoint      = 15 //normally 50
        self.heal           = 5
        self.weapons        = [volcano, hammer, ax]
        self.nameWeapon     = volcano.name
        self.powerAttack    = volcano.power
    }
    
}
