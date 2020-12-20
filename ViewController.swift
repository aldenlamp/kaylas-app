//
//  ViewController.swift
//  kayla-project
//
//  Created by Alden Lamp on 12/19/20.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount = 0 {
        didSet {
            countLabel.text = "Flips: \(flipCount)"
        }
    }

    @IBOutlet var cardButtons: [UIButton]!
    @IBOutlet weak var countLabel: UILabel!
    
    var emojiChoices = ["🐚", "🌊", "🐚", "🌊"]
    
    @IBAction func clickCard(_ sender: UIButton) {
        flipCount += 1
        let cardNumber = cardButtons.firstIndex(of: sender)!
        flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        print("cardNumber = \(cardNumber)")
    }

    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }


}

