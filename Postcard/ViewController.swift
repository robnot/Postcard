//
//  ViewController.swift
//  Postcard
//
//  Created by Rob Notman on 9/15/14.
//  Copyright (c) 2014 jenpat. All rights reserved.
//
// Another comment to test commits (Git)

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var messageLabel: UILabel!
  @IBOutlet weak var enterNameTextField: UITextField!
  @IBOutlet weak var enterMessageTextField: UITextField!
  @IBOutlet weak var mailButton: UIButton!
  @IBOutlet weak var nameLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func sendMailButton(sender: UIButton) {
    // Code will evaluate when we press the button.
    messageLabel.hidden = false
    messageLabel.text = enterMessageTextField.text
    messageLabel.textColor = UIColor.redColor()

    nameLabel.hidden = false
    nameLabel.text = enterNameTextField.text
    nameLabel.textColor = UIColor.blueColor()

    enterMessageTextField.text = ""
    enterMessageTextField.resignFirstResponder()

    enterNameTextField.text = ""
    enterNameTextField.resignFirstResponder()

    mailButton.setTitle("Mail sent", forState: UIControlState.Normal)

  }
}

