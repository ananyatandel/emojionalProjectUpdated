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



 let emojis = ["😐": "meh", "😡": "angry", "🥺": "overwhelmed"]
    
   
    
let customMessages = ["meh": ["go for a run", "talk through it", "stand up for yourself"], "angry" : ["journal", "meditate", "go for a run"], "overwhelmed" : ["seek professional help", "call a loved one", "eat a pint of ice cream"] ]
    
    
@IBAction func showMessage(sender: UIButton) {
    let selectedEmotion = sender.titleLabel?.text
    let random = Int.random(in: 0 ..< 3)
    let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[random]
   
    
    let alertController = UIAlertController (title: "if you feel like this...", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)


    
    alertController.addAction(UIAlertAction(title: emojiMessage, style: UIAlertAction.Style.default, handler: nil))

    present(alertController, animated: true, completion: nil)
}

}

