//
//  AnotherViewController.swift
//  Blog_SelectorSyntaxSugar
//
//  Created by Andyy Hope on 23/03/2016.
//  Copyright © 2016 Andyy Hope. All rights reserved.
//

import UIKit

class AnotherViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // This class is just to demonstrate that it canot acces ViewController.swift's Selector protocol extension
        
        let button = UIButton(type: .System)
        button.addTarget(self, action: .buttonTapped, forControlEvents: .TouchUpInside)
        
        // Because the Selector extension inside ViewController.swift was declared private. Nothing outside of that file can access it or it's properties.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

}
