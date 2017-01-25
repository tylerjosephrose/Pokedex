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
		for attack in Attacks {
			print(attack.value.name, attack.value.type.rawValue, attack.value.power ?? "-", attack.value.accuracy ?? "-", attack.value.pp ?? "-", attack.value.effect)
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

