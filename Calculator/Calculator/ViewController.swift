//
//  ViewController.swift
//  Calculator
//
//  Created by Cassidy Pelchat on 5/10/19.
//  Copyright © 2019 Cassidy Pelchat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var Screen: Double = 0;
    var lastNumber: Double = 0;
    var math = false;
    var operation = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }

    
    @IBAction func numbers(_ sender: UIButton) {
        
        if math == true
        {
            answer.text = String(sender.tag-1)
            Screen = Double(answer.text!)!
            math = false
        }
        else
        {
        answer.text = answer.text! + String(sender.tag-1)
        Screen = Double(answer.text!)!
        }
      
        
    }
    @IBOutlet weak var answer: UILabel!
    
    @IBAction func keys(_ sender: UIButton) {
        
        if answer.text != "" && sender.tag != 11 && sender.tag != 16 {
            
            lastNumber = Double(answer.text!)!
            
            if sender.tag == 12 {
                answer.text = "/";
            }
            
            else if sender.tag == 13 {
                answer.text = "x";
            }
            
            else if sender.tag == 14 {
                answer.text = "-";
            }
            
            else if sender.tag == 15 {
                answer.text = "+";
            }
            
            math = true;
            
            operation = sender.tag
            
    
            
        }
            
        else if sender.tag == 16 {
            
            if operation == 12{ //Divide
                
                answer.text = String(lastNumber / Screen)
                
            }
                
            else if operation == 13{ //Multiply
                
                answer.text = String(lastNumber * Screen)
                
            }
                
            else if operation == 14{ //Subtract
                
                answer.text = String(lastNumber - Screen)
                
            }
                
            else if operation == 15{ //Add
                
                answer.text = String(lastNumber + Screen)
                
            }
            
        }
            
        else if sender.tag == 11{
            
            answer.text = ""
            
            lastNumber = 0;
            
            Screen = 0;
            
            operation = 0;
        }
        
        
    }
    
    
    
    
}

