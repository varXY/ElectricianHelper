//
//  Array+.swift
//  30ZF
//
//  Created by 文川术 on 3/31/16.
//  Copyright © 2016 myname. All rights reserved.
//

import Foundation

// 数组去重
func uniq<S: SequenceType, E: Hashable where E==S.Generator.Element>(source: S) -> [E] {
	var seen: [E:Bool] = [:]
	return source.filter({ (v) -> Bool in
		return seen.updateValue(true, forKey: v) == nil
	})
}

extension Array {

	// 批量删除数字中的元素
	mutating func removeAtIndexes(incs: [Int]) {
		incs.sort(>).forEach { removeAtIndex($0) }
	}

}