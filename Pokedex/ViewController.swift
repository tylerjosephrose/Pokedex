//
//  ViewController.swift
//  Pokedex
//
//  Created by Tyler Rose on 1/25/17.
//  Copyright © 2017 Tyler Rose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBAction func startStuff(_ sender: UIButton) {
		loadAttacks(name: "Gen1Attacks")
		loadAttacks(name: "Gen2Attacks")
		loadAttacks(name: "Gen3Attacks")
		loadPokemon(name: "Gen1Pokemon")
		for attack in AttacksList {
			print(attack.value.name, attack.value.type.rawValue, attack.value.power ?? "-", attack.value.accuracy ?? "-", attack.value.pp ?? "-", attack.value.effect)
		}
		print("\n\n")
		for pokes in PokemonDictionary {
			let poke = pokes.value
			print(String(format: "%03d", poke.pokedexNumber))
			print(poke.name)
			print(poke.originalRegion ?? "Unknown")
			print(String(format: "%d' %d\"", Int(poke.height!), Int(poke.height!.remainder(dividingBy: 12.0))))
			print(String(format: "%.1f lbs", poke.weight ?? "Unknown"))
			print(poke.description ?? "Unknown")
			for t in poke.type {
				print(t)
			}
		}
	}
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

