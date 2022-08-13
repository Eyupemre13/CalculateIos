//
//  ViewController.swift
//  hesapMakinesiYapimi
//
//  Created by Eyüp Emre Aygün on 10.08.2022.
//

import UIKit

class Anasayfa: UIViewController {
    var firstNumber:Double = 0
    var secondNumber:Double = 0
    var isMath : Bool = false
    var operation : Int = 0
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func Numbers(_ sender: UIButton) {
        if isMath == true {
            resultLabel.text = String(sender.tag - 1)
            secondNumber = Double(resultLabel.text!)!
            isMath = false
        
        }
        else {
            resultLabel.text = resultLabel.text! + String(sender.tag - 1)
            secondNumber = Double(resultLabel.text!)!
        
        }
        
        
    }
    
    @IBAction func operateButtons(_ sender: UIButton) {
        if resultLabel.text != "" && sender.tag != 11 && sender.tag != 17 {
            firstNumber = Double(resultLabel.text!)!
            if sender.tag == 12 {
                resultLabel.text = "%"
                
            }
            else if sender.tag == 13 {
                resultLabel.text = "/"
            }
            else if sender.tag == 14 {
                resultLabel.text = "x"
                
                
            }
            else if sender.tag == 15 {
                resultLabel.text = "-"
                
            }
            else if sender.tag == 16 {
                resultLabel.text = "+"
            }
            operation = sender.tag
            isMath = true
            
        }
        else if sender.tag == 11 {
            firstNumber = 0
            secondNumber = 0
            operation = 0
            resultLabel.text = ""
            
        }
        else if sender.tag == 17 {
            if operation == 12 {
                resultLabel.text = String(firstNumber / 100)
            }
            else if operation == 13 {
                resultLabel.text = String(firstNumber / secondNumber)
            }
            else if operation == 14 {
                resultLabel.text = String(firstNumber * secondNumber)
                
            }
            else if operation == 15 {
                resultLabel.text = String (firstNumber - secondNumber)
                
            }
            else if operation == 16 {
                resultLabel.text = String(firstNumber + secondNumber)
            }
        }
        
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

