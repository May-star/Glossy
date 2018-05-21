//
//  ViewController.swift
//  MMM
//
//  Created by May-star on 2018/05/22.
//  Copyright © 2018年 May-star. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

}

extension ViewController {
    @IBAction func tappedOpenButton(_ sender: Any) {
        NSLog(#function)
    }
}

