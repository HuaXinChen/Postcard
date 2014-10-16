//
//  ViewController.swift
//  Postcard
//
//  Created by Victor Chen on 2014-10-14.
//  Copyright (c) 2014 PNI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLable: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLable: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLable.hidden = false
        messageLable.text = enterMessageTextField.text
        messageLable.textColor = UIColor.redColor()
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        nameLable.hidden = false
        nameLable.text = enterNameTextField.text
        nameLable.textColor = UIColor.blueColor()
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

