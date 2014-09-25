//
//  ViewController.swift
//  Postcard
//
//  Created by Ray on 15/09/2014.
//  Copyright (c) 2014 Ray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterMessageName: UITextField!
    
    @IBOutlet weak var enterMessageText: UITextField!
    
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: AnyObject) {
        // my function to execute code when send message button is pressed
        messageLabel.text = "Hello " + enterMessageName.text
        messageLabel.text = messageLabel.text! + " " + enterMessageText.text
        messageLabel.hidden = false
        enterMessageText.text = ""
        enterMessageText.resignFirstResponder() // remove keyboard
        enterMessageName.text = enterMessageName.text
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
}

