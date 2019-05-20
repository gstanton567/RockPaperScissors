//
//  ViewController.swift
//  Rock Paper Scissors
//
//  Created by Grayson Stanton on 5/20/19.
//  Copyright © 2019 Grayson Stanton. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController  {
    var timer : Timer? = nil
    var i = 4
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
    @IBAction func rulesButtonPressed(_ sender: UIButton) {
        let url1 = URL(string:"https://www.wikihow.com/Play-Rock,-Paper,-Scissors")
        let x = SFSafariViewController(url: url1!)
        present(x, animated: true, completion: nil)
        
        
        
//
    }
    
    @IBAction func onStartPressed(_ sender: UIButton) {
        
            
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
                if i == 0
                {
                    titleLabel.text = "You Lose!"
                    timer!.invalidate()
                }
        
        }
        
    
    
    @objc func countDown()
    {
        i -= 1
        titleLabel.text = String(i)
        if i == 0
        {
            titleLabel.text = "You Lose!"
            
        }
    }
    
}

