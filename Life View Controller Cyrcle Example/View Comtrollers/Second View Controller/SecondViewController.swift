//
//  SecondViewController.swift
//  Life View Controller Cyrcle Example
//
//  Created by Pavel Kurilov on 28/04/2019.
//  Copyright © 2019 Pavel Kurilov. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

	// MARK: - Properties
	var delegate: TabbarDelegate?
	
	// MARK: - Init/Deinit
	override func viewDidLoad() {
		super.viewDidLoad()
		delegate?.saveEvent(event: getDecriptionEvent())
		printMessage()
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		delegate?.saveEvent(event: getDecriptionEvent())
		printMessage()
	}
	
	override func viewWillLayoutSubviews() {
		super.viewWillLayoutSubviews()
		delegate?.saveEvent(event: getDecriptionEvent())
		printMessage()
	}
	
	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		delegate?.saveEvent(event: getDecriptionEvent())
		printMessage()
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		delegate?.saveEvent(event: getDecriptionEvent())
		printMessage()
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
		delegate?.saveEvent(event: getDecriptionEvent())
		printMessage()
	}
	
	override func viewDidDisappear(_ animated: Bool) {
		super.viewDidDisappear(animated)
		delegate?.saveEvent(event: getDecriptionEvent())
		printMessage()
	}
}
