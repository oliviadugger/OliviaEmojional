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

    let customMessages = ["sunny":["Wear sunscreen!", "Walkin on sunshine!"], "stormy": ["Stay indoors!", "Watch out for lightning!"], "snowy":["Make a snow angel!", "Wear lots of layers!"], "tornado": ["We're not in Kansas anymore!", "Stay safe!"]]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        let selectedWeather = sender.titleLabel!.text!
        let emojiMessage = customMessages[weathers[selectedWeather]!]?[0]

        
        
        let alertController = UIAlertController(title: "WEATHER ALERT", message:  weathers[emojiMessage!], preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
        
    }


}

