//
//  Emuns.swift
//  Pokedex
//
//  Created by Tyler Rose on 1/25/17.
//  Copyright © 2017 Tyler Rose. All rights reserved.
//

import Foundation

enum Region {
	case Kanto
	case Johto
	case Hoenn
}

enum Types: String {
	case Normal = "NORMAL"
	case Water = "WATER"
	case Fire = "FIRE"
	case Grass = "GRASS"
	case Ice = "ICE"
	case Electric = "ELECTRIC"
	case Ground = "GROUND"
	case Rock = "ROCK"
	case Psychic = "PSYCHIC"
	case Ghost = "GHOST"
	case Dark = "DARK"
	case Poison = "POISON"
	case Dragon = "DRAGON"
	case Bug = "BUG"
	case Fairy = "FAIRY"
	case Fighting = "FIGHTING"
	case Flying = "FLYING"
	case Steel = "STEEL"
}

struct Attack {
	var name: String
	var type: Types
	var power: Int?
	var accuracy: Int?
	var pp: Int?
	var effect: String
}
