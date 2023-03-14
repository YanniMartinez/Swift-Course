//
//  ViewController.swift
//  TwoButtons
//
//  Created by MacBook 26 on 13/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var messageLabel: UILabel!
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    
    @IBAction func setTextButtonTapped(_ sender: UIButton) {
        
        messageLabel.text = textField.text
    }
    
    
    @IBAction func clearTextButtonTapped(_ sender: UIButton) {
        
        messageLabel.text=""
        textField.text = ""
    }
    
}

