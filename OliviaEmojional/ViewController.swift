//
//  ViewController.swift
//  OliviaEmojional
//
//  Created by Olivia Dugger on 6/20/19.
//  Copyright © 2019 Olivia Dugger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let weathers = ["☀️": "sunny", "🌧": "stormy", "❄️": "snowy", "🌪": "tornado"]

    let customMessages = ["sunny":["Make sure to wear sunscreen!", "I'm walkin on sunshine!", "Time for a swim!"], "stormy": ["Stay indoors!", "It's raining men, HALLELUJAH!", "I'm siiiiinging in the rain!"], "snowy":["Make a snow angel!", "Make sure to wear lots of layers!"], "tornado": ["We're not in Kansas anymore!", "Stay safe!", "Duck for cover!"]]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        let num = Int.random(in: 0...2)
        let selectedWeather = sender.titleLabel!.text!
        let emojiMessage = customMessages[weathers[selectedWeather]!]?[num]

        
        
        let alertController = UIAlertController(title: "WEATHER ALERT", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
        
    }


}

