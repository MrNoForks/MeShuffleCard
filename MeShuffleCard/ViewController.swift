//
//  ViewController.swift
//  MeShuffleCard
//
//  Created by boppo on 3/18/19.
//  Copyright © 2019 boppo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var cardButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func touchCard(_ sender: UIButton) {
        flipCard(withEmoji: "👽", on: sender)
    }
    
    //MARK:- For flipping Cards and Checking if its faceup or not
    func flipCard(withEmoji emoji : String,on button : UIButton){
        if button.currentTitle == "👽"{
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.9940463901, green: 0.6460192204, blue: 0, alpha: 1)
        }
        else{
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}

