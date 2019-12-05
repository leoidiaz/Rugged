//
//  ViewController.swift
//  Rugged
//
//  Created by Leonardo Diaz on 11/22/19.
//  Copyright © 2019 Leonardo Diaz. All rights reserved.
//

import UIKit

class PasswordViewController: UIViewController {
    
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordLengthPlaceholder: UILabel!
    @IBOutlet weak var lengthValue: UILabel!
    @IBOutlet weak var lengthSlider: UISlider!
    @IBOutlet weak var upperCaseButton: UIButton!
    @IBOutlet weak var numsButton: UIButton!
    @IBOutlet weak var symbolsButton: UIButton!
    @IBOutlet weak var copyButton: UIButton!
    @IBOutlet weak var refreshButton: UIButton!
    
    var passwordBrain = PasswordBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generatePassword()
        
        upperCaseButton.layer.cornerRadius = 18.0
        numsButton.layer.cornerRadius = 18.0
        symbolsButton.layer.cornerRadius = 18.0
        copyButton.layer.cornerRadius = 18.0
        refreshButton.layer.cornerRadius = 18.0
        
    }
    
   @IBAction func lengthChange(_ sender: UISlider){
        lengthValue.text = String(format: "%.0f", sender.value)
        generatePassword()
    }
    
    
    @IBAction func settingChange(_ sender: UIButton) {
        if sender.isSelected == true {
            sender.isSelected = false
            generatePassword()
            sender.backgroundColor = UIColor.clear
        } else {
            sender.isSelected = true
            generatePassword()
            sender.backgroundColor = UIColor(named: "buttonColor" )
        }
    }
    
    @IBAction func refreshButton(_ sender: UIButton) {
        generatePassword()
    }
    
    @IBAction func copyButton(_ sender: UIButton) {
        let copiedText = UIPasteboard.general
        copiedText.string = passwordLabel.text
        
        if let string = copiedText.string { // Delete. Only to test copy
            print(string)
        }
        
       showAlert()
    }
    
    func generatePassword(){
        let length = roundf(lengthSlider.value)
        let upper = upperCaseButton.isSelected
        let nums = numsButton.isSelected
        let syms = symbolsButton.isSelected
        let generatedPassword = passwordBrain.randomize(length: length, upper: upper, nums: nums, syms: syms)
        passwordLabel.text = generatedPassword
    }
    
    func showAlert() {
        let alert = UIAlertController(title:nil, message: "Copied!", preferredStyle: .alert)
        self.present(alert, animated: true, completion: nil)
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false, block: { _ in alert.dismiss(animated: true, completion: nil)} )
    }
    
}

