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

enum Types {
	case Normal
	case Water
	case Fire
	case Grass
	case Ice
	case Electric
	case Ground
	case Rock
	case Psychic
	case Ghost
	case Dark
	case Poison
	case Dragon
	case Bug
	case Fairy
	case Fighting
	case Flying
	case Steel
}

struct Attack {
	let name: String
	let type: Types
	let power: Int
	let accuracy: Int
	let pp: Int
}

enum Attacks {
	
}
