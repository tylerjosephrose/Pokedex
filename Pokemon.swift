//
//  Pokemon.swift
//  Pokedex
//
//  Created by Tyler Rose on 1/25/17.
//  Copyright © 2017 Tyler Rose. All rights reserved.
//

import Foundation

struct levelLearnset {
	var level: Int
	var attack: Attack
}

struct machineLearnset {
	// HM01 or TM35
	var code: String
	var attack: Attack
}

class Pokemon {
	// Kanto 1-151, Johto 152-251, Hoenn 252-386
	// as followed by serebii
	var pokedexNumber: Int = 000
	var name: String = "NotARealPokemon"
	var type: Array<Types> = [.Bug, .Dark, .Dragon, .Electric]
	// In feet
	var height: Float?
	// In pounds
	var weight: Float?
	var description: String?
	// <level or how to evolve, pointer to next evolution stage>
	var evolutions: Dictionary<String, Pokemon>?
	// <Game, Location>
	var locations: Dictionary<String, String>?
	var weakness: Array<Types>?
	var immunity: Array<Types>?
	var resilience: Array<Types>?
	var levelingLearnset: Array<levelLearnset>?
	var tmHmLearnset: Array<machineLearnset>?
	var originalRegion: Region?
}
