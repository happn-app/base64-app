/*
 * ViewController.swift
 * base64
 *
 * Created by François Lamboley on 2/12/17.
 * Copyright © 2017 happn. All rights reserved.
 */

import Cocoa



class ViewController: NSViewController {
	
	@IBOutlet var textView: NSTextView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		textView.font = textView.font
		
		textView.isAutomaticSpellingCorrectionEnabled = false
		textView.isAutomaticQuoteSubstitutionEnabled = false
		textView.isAutomaticDashSubstitutionEnabled = false
		textView.isAutomaticTextReplacementEnabled = false
		textView.isContinuousSpellCheckingEnabled = false
		textView.isAutomaticLinkDetectionEnabled = false
		textView.smartInsertDeleteEnabled = false
		textView.isGrammarCheckingEnabled = false
	}
	
}
