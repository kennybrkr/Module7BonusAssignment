//
//  charDesc.swift
//  TableView
//
//  Created by Kenneth Barker on 2/25/23.
//

import Foundation

struct characterGame {
    var char: String
    var game: String
    var image: String
    var desc: String
    
    init(_ char: String, _ game: String, _ image: String, _ desc: String) {
        self.char = char
        self.game = game
        self.image = image
        self.desc = desc
    }
}
