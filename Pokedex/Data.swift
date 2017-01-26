//
//  Data.swift
//  Pokedex
//
//  Created by Tyler Rose on 1/25/17.
//  Copyright © 2017 Tyler Rose. All rights reserved.
//

import Foundation

// Attacks
var AttacksList: [String: Attack] = [:]

func loadAttacks(name: String) {
	do {
		let location = Bundle.main.path(forResource: name, ofType: "txt")
		let contents = try String(contentsOfFile: location!)
		let rows = contents.components(separatedBy: "\r")
		for row in rows {
			// skip the first row because that is title bar
			if row == rows.first { continue }
			let cells = row.components(separatedBy: "\t")
			/*for cell in cells {
				print(cell)
			}*/
			AttacksList[cells[0]] = Attack(name: cells[0], type: Types(rawValue: cells[1])!, power: Int(cells[3]), accuracy: Int(cells[4]), pp: Int(cells[5]), effect: cells[6])
		}
	} catch { print(error) }
}

// Pokemon

var PokemonDictionary: [String: Pokemon] = [:]

func loadPokemon(name: String) {
	do {
		let location = Bundle.main.path(forResource: name, ofType: "txt")
		let contents = try String(contentsOfFile: location!)
		let rows = contents.components(separatedBy: "\r")
		for row in rows {
			// skip the first row because that is title bar
			if row == rows.first { continue }
			let cells = row.components(separatedBy: "\t")
			if cells[0] == "" { continue }
			var tempPoke = Pokemon()
			tempPoke.name = cells[0]
			tempPoke.pokedexNumber = Int(cells[1])!
			tempPoke.originalRegion = Region(rawValue: cells[2])
			tempPoke.height = Float(cells[3])
			tempPoke.weight = Float(cells[4])
			tempPoke.description = cells[5]
			var i = 6
			
			// Get Types
			tempPoke.type = []
			let typeInfo = cells[i].components(separatedBy: "|")
			for cell in typeInfo {
				tempPoke.type.append(Types(rawValue: cell)!)
			}
			i += 1
			
			// Get Evolution Description
			let edInfo = cells[i].components(separatedBy: "|")
			for cell in edInfo {
				tempPoke.evolDescs.append(cell)
			}
			i += 1
			
			// Get Evolution Pokemon
			let epInfo = cells[i].components(separatedBy: "|")
			for cell in epInfo {
				tempPoke.evolPokes.append(cell)
			}
			i += 1
			
			// Get locations
			let lInfo = cells[i].components(separatedBy: "|")
			for cell in lInfo {
				let locInfo = cell.components(separatedBy: ":")
				tempPoke.locations?[locInfo[0]] = locInfo[1]
			}
			i += 1
			
			// Get Weaknesses
			let wInfo = cells[i].components(separatedBy: "|")
			for cell in wInfo {
				tempPoke.weakness.append(Types(rawValue: cell)!)
			}
			i += 1
			
			// Get Immunities
			let iInfo = cells[i].components(separatedBy: "|")
			for cell in iInfo {
				if cell != "-" {
					tempPoke.immunity.append(Types(rawValue: cell)!)
				}
			}
			i += 1
			
			// Get Resilience
			let rInfo = cells[i].components(separatedBy: "|")
			for cell in rInfo {
				tempPoke.resilience.append(Types(rawValue: cell)!)
			}
			i += 1
			
			// Get level learnset
			let llInfo = cells[i].components(separatedBy: "|")
			for cell in llInfo {
				let learnInfo = cell.components(separatedBy: ":")
				tempPoke.levelingLearnset.append(levelLearnset(level: Int(learnInfo[0])!, attack: AttacksList[learnInfo[1]]!))
			}
			i += 1
			
			// Get machine learnset
			let mlInfo = cells[i].components(separatedBy: "|")
			for cell in mlInfo {
				let learnInfo = cell.components(separatedBy: ":")
				tempPoke.tmHmLearnset.append(machineLearnset(code: learnInfo[0], attack: AttacksList[learnInfo[1]]!))
			}
			i += 1
			
			PokemonDictionary[cells[0]] = tempPoke
		}
	} catch { print(error) }
}
