//
//  ViewController.swift
//  Rock Paper Scissors
//
//  Created by Grayson Stanton on 5/20/19.
//  Copyright © 2019 Grayson Stanton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    var random = Int(CGFloat.random(in: (0...3)))
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onRockTap(_ sender: UITapGestureRecognizer) {
        random = Int(CGFloat.random(in: (0...3)))
        if random == 0
        {
            titleLabel.text = "Tie"
        }
        if random == 1
        {
            titleLabel.text = "You Lose!"
        }
        if random == 2
        {
            titleLabel.text = "You Win!"
        }
        print(random)
    }
    
    @IBAction func onPaperTap(_ sender: UITapGestureRecognizer) {
        random = Int(CGFloat.random(in: (0...3)))
        if random == 0
        {
            titleLabel.text = "You Win!"
        }
        if random == 1
        {
            titleLabel.text = "Tie"
        }
        if random == 2
        {
            titleLabel.text = "You Lose!"
        }
        print(random)
    }
    @IBAction func onScissorTap(_ sender: UITapGestureRecognizer) {
        
        random = Int(CGFloat.random(in: (0...3)))
        if random == 0
        {
            titleLabel.text = "You Lose!"
        }
        if random == 1
        {
            titleLabel.text = "You Win!"
            
        }
        if random == 2
        {
            titleLabel.text = "Tie"
        }
        print(random)
    }
}

