//
//  TabBarController.swift
//  Life View Controller Cyrcle Example
//
//  Created by Pavel Kurilov on 28/04/2019.
//  Copyright © 2019 Pavel Kurilov. All rights reserved.
//

import UIKit

// MARK: - Delegate
protocol TabbarDelegate {
	func saveEvent(event: String)
	func getStatisticsEvents() -> [String]
}

class TabBarController: UITabBarController {
	
	// MARK: - Properties
	private var statistics: Statistics = Statistics(events: [])
	
	// MARK: - Init/Deinit
	override func viewDidLoad() {
		super.viewDidLoad()
		guard let navController = self.viewControllers?[0] as? UINavigationController else { return }
		guard let firstViewController = navController.viewControllers[0] as? FirstViewController else { return }
		firstViewController.delegate = self
		guard let secondViewController = self.viewControllers?[1] as? SecondViewController else { return }
		secondViewController.delegate = self
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		saveEvent(event: getDecriptionEvent())
	}
	
	override func viewWillLayoutSubviews() {
		super.viewWillLayoutSubviews()
		saveEvent(event: getDecriptionEvent())
	}
	
	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		saveEvent(event: getDecriptionEvent())
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		saveEvent(event: getDecriptionEvent())
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
		saveEvent(event: getDecriptionEvent())
	}
	
	override func viewDidDisappear(_ animated: Bool) {
		super.viewDidDisappear(animated)
		saveEvent(event: getDecriptionEvent())
	}
}

// MARK: - Extension TabBarDelegate
extension TabBarController: TabbarDelegate {
	func saveEvent(event: String) {
		self.statistics.events.append(event)
	}
	
	func getStatisticsEvents() -> [String] {
		return statistics.events
	}
}
