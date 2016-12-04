//
//  ViewController.swift
//  Blog_SelectorSyntaxSugar
//
//  Created by Andyy Hope on 23/03/2016.
//  Copyright © 2016 Andyy Hope. All rights reserved.
//

import UIKit

fileprivate extension Selector {
    static let buttonTapped = #selector(ViewController.buttonTapped(_:))
    static let keyboardWillShowNotification = #selector(ViewController.keyboardWillShowNotification(_:))
    static let barButtonItemTapped = #selector(ViewController.barButtonItemTapped(_:))
    static let segmentedControlValueChanged = #selector(ViewController.segmentedControlValueChanged(_:))
}

class ViewController: UIViewController {
    
    @IBOutlet var button: UIButton! {
        didSet {
            button.addTarget(self, action: .buttonTapped, for: .touchUpInside)
        }
    }

    @IBOutlet var segmentedControl: UISegmentedControl! {
        didSet {
            segmentedControl.addTarget(self, action: .segmentedControlValueChanged, for: .valueChanged)
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
        
        NotificationCenter.default.addObserver(self, selector: .keyboardWillShowNotification, name: Notification.Name(rawValue: "EwStringLiteral"), object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func buttonTapped(_ sender: UIButton) {
        print("Push me and then just touch me. Until I can get my... Satisfaction.")
        print(Selector.buttonTapped)
    }
    
    func segmentedControlValueChanged(_ sender: UISegmentedControl) {
        print(Selector.segmentedControlValueChanged)
    }
    
    func barButtonItemTapped(_ sender: UIBarButtonItem) {
        print(Selector.barButtonItemTapped)
    }
    
    func keyboardWillShowNotification(_ notification: Notification) {
        print(Selector.keyboardWillShowNotification)
    }
}

