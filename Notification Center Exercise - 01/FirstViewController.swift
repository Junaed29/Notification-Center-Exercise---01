//
//  ViewController.swift
//  Notification Center Exercise - 01
//
//  Created by Junaed Muhammad Chowdhury on 18/10/22.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var viewTitle: UILabel!

    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        createObservers()
    }

    func createObservers() {
        NotificationCenter.default.addObserver(self, selector: #selector(updateToRed(notification:)), name: .Red, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(updateToGreen(notification:)), name: .Green, object: nil)
    }
    
    @objc func updateToRed(notification: NSNotification){
        viewTitle.text = "RED"
        view.backgroundColor = .systemRed
    }
    
    @objc func updateToGreen(notification: NSNotification){
        viewTitle.text = "Green"
        view.backgroundColor = .systemGreen
    }

}

extension Notification.Name {
    static let Green = Notification.Name(rawValue: "com.junaed.Green")
    static let Red = Notification.Name(rawValue: "com.junaed.Red")
}

