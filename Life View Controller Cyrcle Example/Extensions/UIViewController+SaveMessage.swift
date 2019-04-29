//
//  UIViewController+SaveMessage.swift
//  Life View Controller Cyrcle Example
//
//  Created by Pavel Kurilov on 28/04/2019.
//  Copyright © 2019 Pavel Kurilov. All rights reserved.
//

import UIKit

extension UIViewController {
	
	func printMessage(_ message: String = "", line: Int = #line, function: String = #function, date: Date = Date()) {
		print("\(date) \(title ?? "nil"): line \(line) of \(function) \(message)")
	}
	
	func getDecriptionEvent(_ message: String = "", line: Int = #line,
													function: String = #function, date: Date = Date()) -> String {
		return "\(date) \(title ?? "nil"): line \(line) of \(function) \(message)"
	}
}
