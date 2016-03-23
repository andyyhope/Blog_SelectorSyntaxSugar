//
//  ViewController.swift
//  Blog_SelectorSyntaxSugar
//
//  Created by Andyy Hope on 23/03/2016.
//  Copyright © 2016 Andyy Hope. All rights reserved.
//

import UIKit

private extension Selector {
    static let buttonTapped = #selector(ViewController.buttonTapped(_:))
    static let keyboardWillShowNotification = #selector(ViewController.keyboardWillShowNotification(_:))
    static let barButtonItemTapped = #selector(ViewController.barButtonItemTapped(_:))
    static let segmentedControlValueChanged = #selector(ViewController.segmentedControlValueChanged(_:))
}

class ViewController: UIViewController {
    
    @IBOutlet var button: UIButton! {
        didSet {
            button.addTarget(self, action: .buttonTapped, forControlEvents: .TouchUpInside)
        }
    }

    @IBOutlet var segmentedControl: UISegmentedControl! {
        didSet {
            segmentedControl.addTarget(self, action: .segmentedControlValueChanged, forControlEvents: .ValueChanged)
        }
    }
    
    @IBOutlet var barButtonItem: UIBarButtonItem! {
        didSet {
            barButtonItem.target = self
            barButtonItem.action = .barButtonItemTapped
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: .keyboardWillShowNotification, name: "EwStringLiteral", object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func buttonTapped(sender: UIButton) {
        print("Push me and then just touch me. Until I can get my... Satisfaction.")
        print(Selector.buttonTapped)
    }
    
    func segmentedControlValueChanged(sender: UISegmentedControl) {
        print(Selector.segmentedControlValueChanged)
    }
    
    func barButtonItemTapped(sender: UIBarButtonItem) {
        print(Selector.barButtonItemTapped)
    }
    
    func keyboardWillShowNotification(notification: NSNotification) {
        print(Selector.keyboardWillShowNotification)
    }
}

