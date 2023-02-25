//
//  tableViewLogic.swift
//  TableView
//
//  Created by Kenneth Barker on 2/25/23.
//

import Foundation

struct tableViewLogic {
    
    var characters = [
        characterGame("Master Chief", "Halo", "masterc",
                     "Master Chief is a supersoldier known as a Spartan in the Halo franchise. He has never been seen without his helmet."),
        characterGame("Frank Woods", "COD Black Ops", "frankwoods", "Frank Woods is a Special Ops soldier who fought in the Vietnam War. He is known for his reckless personality and witty one-liners."),
        characterGame("Zagreus", "Hades", "zagreus", "Zagreus is one of the sons of Hades. He is trapped in the Underworld by his father, and attempts escape over decades."),
        characterGame("Steve", "Minecraft", "steve", "Steve is the default character in the game Minecraft. He is known to be able to fell trees with a single punch."),
        characterGame("Godfrey, The First Elden Lord", "Elden Ring", "godfrey", "Godfrey is the first who is crowned Elden Lord in the game Elden Ring. He is cursed by his power and his beast companion."),
        characterGame("Ghandi", "Civilization 5", "ghandi", "Ghandi in Civilization 5 has a bit of a reputation. Due to an overflow error, instead of set to passive as possible (-1), the code overflows and he becomes a tyrant."),
        characterGame("Darth Maul", "Star Wars: Battlefront 2", "darthmaul", "Darth Maul is one of the best heroes in the original Battlefront 2 (2007). His dash attack can be a one-hit combo."),
        characterGame("Arthur Morgan", "RDR2", "arthurmorgan", "Arthur Morgan is a character who struggles to understand himself in a developing world that's leaving him behind. He also must come to terms with his past."),
        characterGame("Doom Guy", "Doom: Eternal", "doomguy", "Doom Guy is the essence of hatred. His sole objective to eradicate the demonlife that has taken over earth, as well as in Hell."),
        characterGame("CL4P-TP", "Borderlands 2", "claptrap", "CL4P-TP (also known as Clap-Trap) is one of the worst designed video game characters in existence. Somehow the funny character is the most unfunny.")
    ]
    
    var character = ""
    var game = ""
    var image = ""
    var desc = ""
    
    mutating func findCount() -> Int {
        let count = characters.count
        return count
    }
    
    mutating func findName(index: Int) -> String {
        let text = characters[index].char
        return text
    }
    
    mutating func findGame(index: Int) -> String {
        let text = characters[index].game
        return text
    }
}
