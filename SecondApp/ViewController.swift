//
//  ViewController.swift
//  SecondApp
//
//  Created by Arthur Damous on 01/12/20.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var cpuScoreLabel: UILabel!
    
    @IBOutlet weak var buttonDeal: UIButton!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        let rigthNumber = Int.random(in: 2...14)
        
        print(leftNumber)
        print(rigthNumber)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rigthNumber)")
        
        if leftNumber > rigthNumber {
            leftScore += 1
            
            playerScoreLabel.text = String(leftScore)
            
            print("Player Wins")
        } else if leftNumber < rigthNumber {
            rightScore += 1
            
            cpuScoreLabel.text = String(rightScore)
            
            print("CPU Wins")
        }else {
            print("Tie")
        }
        
    }
    

}

