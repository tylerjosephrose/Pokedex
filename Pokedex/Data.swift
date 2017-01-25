//
//  Data.swift
//  Pokedex
//
//  Created by Tyler Rose on 1/25/17.
//  Copyright © 2017 Tyler Rose. All rights reserved.
//

import Foundation

// Attacks
var Attacks: [String: Attack] = [:]

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
			Attacks[cells[0]] = Attack(name: cells[0], type: Types(rawValue: cells[1])!, power: Int(cells[3]), accuracy: Int(cells[4]), pp: Int(cells[5]), effect: cells[6])
			print(Attacks.count)
		}
	} catch { print(error) }
	let _ = 5
}

// Pokemon
