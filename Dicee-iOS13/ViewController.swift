//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceOneView: UIImageView!
    @IBOutlet weak var diceTwoView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func rollDidTap(_ sender: Any) {
//        randomRoll()
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        
        diceOneView.image = diceArray.randomElement()
        diceTwoView.image = diceArray.randomElement()
    }
    
    func randomRoll() {
        diceOneView.alpha = 1
        diceTwoView.alpha = 1
        var random = arc4random_uniform(6) + 1
        var random2 = arc4random_uniform(6) + 1
        var num = ""
        var num2 = ""
        
        switch random {
        case 1:
                    num = "One"
                    break
        case 2:
                   num = "Two"
                   break
        case 3:
                   num = "Three"
                   break
        case 4:
                   num = "Four"
                   break
        case 5:
                   num = "Five"
                   break
        case 6:
                   num = "Six"
                   break
        default:
            break
            
        }
        
        switch random2 {
        case 1:
                    num2 = "One"
                    break
        case 2:
                   num2 = "Two"
                   break
        case 3:
                   num2 = "Three"
                   break
        case 4:
                   num2 = "Four"
                   break
        case 5:
                   num2 = "Five"
                   break
        case 6:
                   num2 = "Six"
                   break
        default:
            break
            
        }
        
        diceOneView.image = UIImage(named: "Dice\(num)")
        diceTwoView.image = UIImage(named: "Dice\(num2)")
    }
    
}

