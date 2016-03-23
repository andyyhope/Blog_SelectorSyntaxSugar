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
}

class ViewController: UIViewController {
    
    @IBOutlet var button: UIButton! {
        didSet {
            button.addTarget(self, action: .buttonTapped, forControlEvents: .TouchUpInside)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func buttonTapped(sender: UIButton) {
        print("Push me and then just touch me. Until I can get my... Satisfaction.")
    }
}

