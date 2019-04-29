//
//  FirstViewController.swift
//  Life View Controller Cyrcle Example
//
//  Created by Pavel Kurilov on 28/04/2019.
//  Copyright © 2019 Pavel Kurilov. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
	
	// MARK: - Properties
	var delegate: TabbarDelegate?

	// MARK: - Init/Deinit
	override func viewDidLoad() {
		super.viewDidLoad()
		configure()
		printMessage()
		delegate?.saveEvent(event: getDecriptionEvent())
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		printMessage()
		delegate?.saveEvent(event: getDecriptionEvent())
	}
	
	override func viewWillLayoutSubviews() {
		super.viewWillLayoutSubviews()
		printMessage()
		delegate?.saveEvent(event: getDecriptionEvent())
	}
	
	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		printMessage()
		delegate?.saveEvent(event: getDecriptionEvent())
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		printMessage()
		delegate?.saveEvent(event: getDecriptionEvent())
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
		printMessage()
		delegate?.saveEvent(event: getDecriptionEvent())
	}
	
	override func viewDidDisappear(_ animated: Bool) {
		super.viewDidDisappear(animated)
		printMessage()
		delegate?.saveEvent(event: getDecriptionEvent())
	}
}

// MARK: - UI view controllers methods
extension FirstViewController {
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		
		let destination = segue.destination
		
		if let destination = destination as? InformationViewController {
			destination.onDidChangeEventState = { [unowned self] value in
				self.delegate?.saveEvent(event: value)
			}
			destination.odDidRequestUpdateInformation = {
				destination.statisticsEvents = self.delegate?.getStatisticsEvents() ?? []
			}
		}
	}
}

// MARK: - Cofigure UI
extension FirstViewController {
	
	private func configure() {
		configureNavigationBar()
	}
	
	private func configureNavigationBar() {
		self.navigationController?.setNavigationBarHidden(true, animated: true)
	}
}
