//
//  SecondViewController.swift
//  Notification Center Exercise - 01
//
//  Created by Junaed Muhammad Chowdhury on 18/10/22.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func redButtonClicked(_ sender: UIButton) {
        
        NotificationCenter.default.post(name: .Red, object: nil)
        
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func greenButtonClicked(_ sender: UIButton) {
        
        NotificationCenter.default.post(name: .Green, object: nil)
        
        self.navigationController?.popViewController(animated: true)
    }
}
