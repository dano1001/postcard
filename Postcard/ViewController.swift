//
//  ViewController.swift
//  Postcard
//
//  Created by Dan Kennedy on 9/18/14.
//  Copyright (c) 2014 Summit Web Consultants. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var NameLabel: UILabel!
    
    @IBOutlet weak var messageLabel: UILabel!

    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code will evaluate when we press the button.
        
        // Code to display Message Label
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.blueColor()
        
        // Code to Display Name Label
        NameLabel.hidden = false
        NameLabel.text = enterNameTextField.text
        NameLabel.textColor = UIColor.blueColor()
        enterNameTextField.text = ""
        
        
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

