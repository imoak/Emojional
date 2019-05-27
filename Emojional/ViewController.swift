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
    let customMessage = ["starstruck": ["lie down for a second", "take a breather"], "babie": ["you're cute", "what a cutie"]]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmoji = sender.titleLabel!.text
        let message = emojis[selectedEmoji!]!
        let options = customMessage[emojis[selectedEmoji!]!]!.count
        let emojiMessage = customMessage[emojis[selectedEmoji!]!]?[Int.random(in: 0 ... options-1)]
        let alertController = UIAlertController(title: "you are \(message)", message: emojiMessage, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
        
    }


}

