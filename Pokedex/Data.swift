//
//  Data.swift
//  Pokedex
//
//  Created by Tyler Rose on 1/25/17.
//  Copyright © 2017 Tyler Rose. All rights reserved.
//

import Foundation

// Attacks
//var Attacks: Dictionary<String, Attack>?
var Attacks: [String: Attack] = [:]
// Gen 1
func loadAttacks() {
	/*let location = Bundle.main.path(forResource: "Gen1Attacks", ofType: "csv")
	let fileData = NSData(contentsOfFile: location!)
	print(fileData!)
	if fileData != nil {
		let contents = NSString(data: fileData as! Data, encoding:String.Encoding.utf8.rawValue) as! String
		let rows = contents.components(separatedBy: "\n")
		for row in rows {
			let cells = row.components(separatedBy: ",")
			Attacks?[cells[0]] = Attack(name: cells[0], type: Types(rawValue: cells[1])!, power: Int(cells[3])!, accuracy: Int(cells[4])!, pp: Int(cells[5])!, effect: cells[6])
		}
	}*/
	
	do {
		let location = Bundle.main.path(forResource: "Gen1Attacks", ofType: "txt")
		let contents = try String(contentsOfFile: location!)
		let rows = contents.components(separatedBy: "\r")
		for row in rows {
			// skip the first row because that is title bar
			if row == rows.first { continue }
			let cells = row.components(separatedBy: "\t")
			for cell in cells {
				print(cell)
			}
			Attacks["word"] = Attack(name: "Pokemon", type: .Poison, power: 5, accuracy: 5, pp: 5, effect: "no effect")
			Attacks[cells[0]] = Attack(name: cells[0], type: Types(rawValue: cells[1])!, power: Int(cells[3]), accuracy: Int(cells[4]), pp: Int(cells[5]), effect: cells[6])
			print(Attacks.count)
		}
	} catch { print(error) }
	let _ = 5
}

// Pokemon
