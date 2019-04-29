//
//  InformationViewController.swift
//  Life View Controller Cyrcle Example
//
//  Created by Pavel Kurilov on 28/04/2019.
//  Copyright © 2019 Pavel Kurilov. All rights reserved.
//

import UIKit

class InformationViewController: UIViewController {
	
	// MARK: - UI properties
	@IBOutlet private var statisticsEventsTextView: UITextView!
	
	// MARK: - properties
	var onDidChangeEventState: ((_ eventName: String) -> Void)?
	var odDidRequestUpdateInformation: (() -> Void)?
	var statisticsEvents: [String] = []
	
	// MARK:- Transition
	override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
		super.viewWillTransition(to: size, with: coordinator)
		printMessage() // Only print function without saveEvent because it is not include Life View Controller Cyrcle
		odDidRequestUpdateInformation?()
		configureTextView(with: statisticsEvents)
	}
	
	// MARK: - Init/ Deinit
	override func viewDidLoad() {
		super.viewDidLoad()
		configure()
		onDidChangeEventState?(getDecriptionEvent())
		printMessage()
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		onDidChangeEventState?(getDecriptionEvent())
		printMessage()
		
	}
	
	override func viewWillLayoutSubviews() {
		super.viewWillLayoutSubviews()
		onDidChangeEventState?(getDecriptionEvent())
		printMessage()
	}
	
	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		onDidChangeEventState?(getDecriptionEvent())
		printMessage()
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		onDidChangeEventState?(getDecriptionEvent())
		printMessage()
		odDidRequestUpdateInformation?()
		configureTextView(with: statisticsEvents)
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
		onDidChangeEventState?(getDecriptionEvent())
		printMessage()
	}
	
	override func viewDidDisappear(_ animated: Bool) {
		super.viewDidDisappear(animated)
		onDidChangeEventState?(getDecriptionEvent())
		printMessage()
	}
}

// MARK: - Cofigure UI
extension InformationViewController {
	
	private func configure() {
		configureNavigationBar()
	}
	
	private func configureNavigationBar() {
		self.navigationController?.setNavigationBarHidden(false, animated: true)
		navigationController?.navigationBar.tintColor = .darkGray
	}
	
	func configureTextView(with events: [String]) {
		statisticsEventsTextView.text = ""
		for stringValue in events {
			self.statisticsEventsTextView.text.append("\(stringValue) \n")
		}
	}
}
