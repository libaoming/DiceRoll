//
//  ViewController.swift
//  DiceRoll
//
//  Created by 李宝明 on 16/8/22.
//  Copyright © 2016年 李宝明. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    
    @IBAction func guessTapped(_ sender: AnyObject) {
        
        let diceRoll = String(arc4random_uniform(6))
        
        if let text = textField.text {
                if text == diceRoll {
                    resultLabel.text = "you are right"
                }else {
                    resultLabel.text = "the number is \(diceRoll)"
                }
                
            }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

