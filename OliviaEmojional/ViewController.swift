//
//  ViewController.swift
//  OliviaEmojional
//
//  Created by Olivia Dugger on 6/20/19.
//  Copyright © 2019 Olivia Dugger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func showMessage(sender: UIButton) {
       let alertController = UIAlertController(title: "WEATHER ALERT", message: "...", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
        
    }


}

