//
//  ViewController.swift
//  Emojional Project
//
//  Created by Abigail Weiers on 6/15/19.
//  Copyright © 2019 Abigail Weiers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


// declare array of options
    let emojis = ["☀️": "happy", "⛈": "sadOrAngry", "💨": "worried"]
    
   
    
    let customMessages = ["happy": ["go for a picnic", "eat a snow cone", "go to the pool"], "sadOrAngry" : ["journal and/or meditate", "bake cookies", "watch your comfort movies/tv shows"], "worried" : ["go on a walk (if safe)", "stay in and read a book", "take a nap"] ]
    
    
@IBAction func showMessage(sender: UIButton) {
    let selectedEmotion = sender.titleLabel?.text
    let random = Int.random(in: 0 ..< 3)
    let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[random]
   
    
    let alertController = UIAlertController (title: "if you feel like this...", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)

//changes
    
    alertController.addAction(UIAlertAction(title: emojiMessage, style: UIAlertAction.Style.default, handler: nil))

    present(alertController, animated: true, completion: nil)
}

}

