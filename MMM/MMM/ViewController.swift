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
    private func openOpenPanel() {
        guard let window = NSApplication.shared.mainWindow else {
            return
        }
        
        let panel: NSOpenPanel = NSOpenPanel()
        panel.canChooseFiles = true
        panel.canChooseDirectories = false
        panel.allowsMultipleSelection = false
        panel.resolvesAliases = true
        
        panel.beginSheetModal(for: window) { (response: NSApplication.ModalResponse) in
            // pass
            if response == .OK {
                if let urlstr = panel.url?.absoluteString {
                    NSLog(urlstr)
                }
            }
        }
    }
}
extension ViewController {
    @IBAction func tappedOpenButton(_ sender: Any) {
        NSLog(#function)
        self.openOpenPanel()
    }
}
