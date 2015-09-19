//
//  TestNavigationController.swift
//  Q2
//
//  Created by 文川术 on 15/9/12.
//  Copyright (c) 2015年 xiaoyao. All rights reserved.
//

import Foundation
import UIKit

class TestNavigationController: UINavigationController, UINavigationControllerDelegate {
	var statusBarStyle = UIStatusBarStyle.LightContent

	convenience init() {
		let testVC = TestViewController()
		self.init(rootViewController: testVC)
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		self.delegate = self
		self.navigationBar.translucent = true
		colorForViewController("type1")
	}

	override func preferredStatusBarStyle() -> UIStatusBarStyle {
		return statusBarStyle
	}

	func navigationController(navigationController: UINavigationController, willShowViewController viewController: UIViewController, animated: Bool) {

		if let _ = viewController as? TestViewController {
			self.statusBarStyle = UIStatusBarStyle.LightContent
			super.setNeedsStatusBarAppearanceUpdate()
			colorForViewController("type1")

		}

		if let _ = viewController as? ContentViewController {
			colorForViewController("type2")

		}

		if let _ = viewController as? DetailViewController {
			colorForViewController("type2")
		}

	}

	func colorForViewController(type: String) {
		switch type {
		case "type1":

			UIView.animateWithDuration(1.0, animations: { () -> Void in
				self.navigationBar.barTintColor = UIColor.redColor()
				self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
				self.navigationBar.tintColor = UIColor.whiteColor()
			})

		case "type2":

			UIView.animateWithDuration(1.0, animations: { () -> Void in
				self.navigationBar.barTintColor = UIColor.whiteColor()
				self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.blackColor()]
				self.navigationBar.tintColor = UIColor.redColor()
				self.statusBarStyle = UIStatusBarStyle.Default
				super.setNeedsStatusBarAppearanceUpdate()
			})

		default:
			break
		}
	}

}
