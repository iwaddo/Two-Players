//
//  ViewController.swift
//  Two Players
//
//  Created by Ian Waddington on 13/10/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playerOneLabel: UILabel!
    @IBOutlet weak var playerTwoLabel: UILabel!
    
    @IBOutlet weak var inputNameLabel: UILabel!
    @IBOutlet weak var inputNameTextField: UITextField!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        inputNameTextField.isHidden = false
        playAgainButton.isHidden = true
        playerOneLabel.text = "Player 1:"
        playerTwoLabel.text = "Player 2"
        inputNameLabel.text = "Player 1:"
        inputNameTextField.becomeFirstResponder()
    }

    @IBAction func doneKeyPressed(_ sender: UITextField) {
        if inputNameLabel.text == "Player 1:" {
            playerOneLabel.text = ("Player 1: \(inputNameTextField.text!)")
            inputNameLabel.text = "Player 2:"
            inputNameTextField.text = ""
        } else if inputNameLabel.text == "Player 2:" {
            playerTwoLabel.text = ("Player 2: \(inputNameTextField.text!)")
            inputNameTextField.text = ""
            inputNameLabel.text = ""
            inputNameTextField.resignFirstResponder()
            inputNameTextField.isHidden = true
            playAgainButton.isHidden = false
            
        }
    }
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
        viewDidLoad()
    }
    
    
}

