//
//  ViewController.swift
//  Dark Theme FR
//
//  Created by Mirko Cukich on 8/11/19.
//  Copyright © 2019 Digital Mirko. All rights reserved.
//
// Swift Dark Theme First Responder Twitter Keyboard w/ Swipe Down Dismiss Demo - Demo 8 of 30

import UIKit

class ViewController: UIViewController {
    
    // Text View
    @IBOutlet weak var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // twitter type keyboard
        textView.keyboardType = .twitter
        
        // dark keyboard theme
        textView.keyboardAppearance = .dark
        
        // swipe gesture
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(didSwipeDown(_:)))
        
        // which swipe direction
        swipeGesture.direction = .down
        
        // add swipe gesture recognizer to textview
        self.textView.addGestureRecognizer(swipeGesture)
    }
    
    // user swipes down gesture
    @objc func didSwipeDown(_ sender: UISwipeGestureRecognizer) {
        // if swipe gesture is down
        if sender.direction == .down {
            self.view.endEditing(true)
        }
    }
    
    // view appears
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // when user taps on screen it can do something - First Responder
        // false by default, do not call view if not on the display
        if self.textView.canBecomeFirstResponder {
            self.textView.becomeFirstResponder()
        }
    }

}
