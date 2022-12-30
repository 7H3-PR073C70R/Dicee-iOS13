//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    let imageList = [UIImage(named: "DiceOne")!, UIImage(named: "DiceTwo")!, UIImage(named: "DiceThree")!, UIImage(named: "DiceFour")!, UIImage(named: "DiceFive")!, UIImage(named: "DiceSix")!]

    @IBAction func rollButtonPressed(_ sender: UIButton){
        diceImageView1.animationImages = imageList
        diceImageView2.animationImages = imageList.reversed()
        diceImageView1.animationDuration = TimeInterval(1)
        diceImageView2.animationDuration = TimeInterval(1)
        diceImageView1.startAnimating()
        diceImageView2.startAnimating()
        Task {
            try await Task.sleep(nanoseconds: 1_000_000_000)
            diceImageView1.stopAnimating()
            diceImageView2.stopAnimating()
            diceImageView1.image = imageList[Int.random(in: 0...5)]
            diceImageView2.image = imageList[Int.random(in: 0...5)]
        }
        
    }
    
}

