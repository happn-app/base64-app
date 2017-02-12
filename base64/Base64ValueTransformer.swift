/*
 * Base64ValueTransformer.swift
 * base64
 *
 * Created by François Lamboley on 2/12/17.
 * Copyright © 2017 happn. All rights reserved.
 */

import Foundation



@objc(Base64ValueTransformer)
class Base64ValueTransformer : ValueTransformer {
	
	override class func allowsReverseTransformation() -> Bool {
		return true
	}
	
	override class func transformedValueClass() -> AnyClass {
		return NSString.self
	}
	
	override func transformedValue(_ value: Any?) -> Any? {
		guard let value = value as? String else {return nil}
		guard let data = Data(base64Encoded: value) else {return nil}
		return String(data: data, encoding: .utf8)
	}
	
	override func reverseTransformedValue(_ value: Any?) -> Any? {
		guard let value = value as? String else {return nil}
		return value.data(using: .utf8)?.base64EncodedString()
	}
	
}
