//
//  ViewController.swift
//  Emojional
//
//  Created by Isabella Moak on 5/26/19.
//  Copyright © 2019 Isabella Moak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let emojis = ["🤩": "starstruck", "🥺": "babie"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmoji = sender.titleLabel!.text
        let message = emojis[selectedEmoji!]
        let alertController = UIAlertController(title: "how you're feeling:", message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
        
    }


}

