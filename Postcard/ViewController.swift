//
//  ViewController.swift
//  Postcard
//
//  Created by Rob Notman on 9/15/14.
//  Copyright (c) 2014 jenpat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var messageLabel: UILabel!
  @IBOutlet weak var enterNameTextField: UITextField!
  @IBOutlet weak var enterMessageLabel: UITextField!
  @IBOutlet weak var mailButton: UIButton!

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
    messageLabel.text = enterMessageLabel.text
    enterMessageLabel.text = ""
    enterMessageLabel.resignFirstResponder()
    messageLabel.textColor = UIColor.redColor()
    mailButton.setTitle("Mail sent", forState: UIControlState.Normal)
  }


}

