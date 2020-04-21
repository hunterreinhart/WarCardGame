//
//  ViewController.swift
//  WarCardGame
//
//  Created by Hunter Reinhart on 4/19/20.
//  Copyright © 2020 Hunter Reinhart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }

    
    @IBAction func dealTapped(_ sender: Any) {
        // print("Deal Tapped!")
        let leftNumber = Int.random(in: 2...14)
        // print(leftNumber)
        
        let rightNumber = Int.random(in: 2...14)
        // print(rightNumber)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber{
            // Left side wins
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if rightNumber > leftNumber{
            // Right side wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else {
            // tie
        }
    }
    

}

