//
//  TestViewController.swift
//  Q2
//
//  Created by 文川术 on 15/9/12.
//  Copyright (c) 2015年 xiaoyao. All rights reserved.
//

import Foundation
import UIKit


class TestViewController: UIViewController {

	var records = Records()
	var generator = Generator()
	var global = Global()

	var buttons = [UIButton]()
	var littleButtons = [UIButton]()

	override func viewDidLoad() {
		super.viewDidLoad()

		self.title = "电工试题"
		self.view.backgroundColor = Global.backgroundColor()

		buttons = generator.genButtonsForTest()
		buttons[0].addTarget(self, action: "open:", forControlEvents: .TouchUpInside)
		buttons[1].addTarget(self, action: "open:", forControlEvents: .TouchUpInside)
		for button in buttons {
			self.view.addSubview(button)
		}

		let label = generator.genLabelForTest()
		view.addSubview(label)
	}

	override func viewWillAppear(animated: Bool) {
		super.viewWillAppear(animated)

		for i in 0..<2 {
			buttons[i].hidden = false
			buttons[i].genAnimation(.Appear, delay: 0.1 * Double(i), distance: 30 + 40 * CGFloat(i))
		}

	}

	func open(sender: UIButton) {
		let index = sender.tag - 33893

		if index == 0 {
			buttons[0].genAnimation(.Touched, delay: 0.0, distance: 0.0)
			buttons[1].genAnimation(.Disappear, delay: 0.0, distance: 0.0)
		} else {
			buttons[1].genAnimation(.Touched, delay: 0.0, distance: 0.0)
			buttons[0].genAnimation(.Disappear, delay: 0.0, distance: 0.0)
		}

		pushOrPresent(index)
	}

	func pushOrPresent(index: Int) {
		switch index {
		case 0:
			let QuestionVC = QuestionViewController()
			QuestionVC.record = {(rightCount: Int, date: NSDate) in
				let record = Record(record: rightCount, date: date)
				self.records.records.insert(record, atIndex: 0)
			}

			QuestionVC.hidesBottomBarWhenPushed = true

			delay(seconds: 0.5, completion: { () -> () in
				self.navigationController?.pushViewController(QuestionVC, animated: true)
			})

		case 1:
			let recordVC = RecordViewController()
			recordVC.records = self.records.records
			let detailNavi = DetailNavigationController(rootViewController: recordVC)

			delay(seconds: 0.5, completion: { () -> () in
				self.presentViewController(detailNavi, animated: true, completion: nil)
			})

		default:
			break
		}
	}


}






