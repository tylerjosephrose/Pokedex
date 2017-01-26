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

struct Attack {
	var name: String
	var type: Types
	var power: Int?
	var accuracy: Int?
	var pp: Int?
	var effect: String
}

struct Pokemon {
	// Kanto 1-151, Johto 152-251, Hoenn 252-386
	// as followed by serebii
	var pokedexNumber: Int = 000
	var name: String = "NotARealPokemon"
	var type: Array<Types> = [.Normal]
	// In feet
	var height: Float?
	// In pounds
	var weight: Float?
	var description: String?
	// <level or how to evolve, pointer to next evolution stage>
	var evolutions: Dictionary<String, Pokemon>?
	// <Game, Location>
	var locations: Dictionary<String, String>?
	var weakness = [Types]()
	var immunity = [Types]()
	var resilience = [Types]()
	var levelingLearnset = [levelLearnset]()
	var tmHmLearnset = [machineLearnset]()
	var originalRegion: Region?
	
	// need temp storage of evolution descriptions and the pokemon names until all are loaded
	// This will be translated to evolutions after file is loaded
	var evolDescs = [String]()
	var evolPokes = [String]()
}
