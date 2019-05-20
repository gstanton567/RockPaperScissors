//
//  ViewController.swift
//  Rock Paper Scissors
//
//  Created by Grayson Stanton on 5/20/19.
//  Copyright © 2019 Grayson Stanton. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, UIImagePickerControllerDelegate  {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    
    var timer : Timer? = nil
    var i = 4
    var random = Int(CGFloat.random(in: (0...3)))
    
    override func viewDidLoad() {
        super.viewDidLoad()
            let tap = UITapGestureRecognizer(target: self, action: #selector(doubleTapped))
            tap.numberOfTapsRequired = 2
            view.addGestureRecognizer(tap)
    }

    @IBAction func onRockTap(_ sender: UITapGestureRecognizer) {
        random = Int(CGFloat.random(in: (0...3)))
        if random == 0
        {
            titleLabel.text = "Tie"
            if i != 4 {
                timer!.invalidate()
            }
            startButton.isEnabled = true
            i = 4
        }
        if random == 1
        {
            titleLabel.text = "You Lose!"
            if i != 4 {
                timer!.invalidate()
            }
            startButton.isEnabled = true
            i = 4
        }
        if random == 2
        {
            titleLabel.text = "You Win!"
            if i != 4 {
                timer!.invalidate()
            }
            startButton.isEnabled = true
            i = 4
        }
        print(random)
    }
    
    @IBAction func onPaperTap(_ sender: UITapGestureRecognizer) {
        random = Int(CGFloat.random(in: (0...3)))
        if random == 0
        {
            titleLabel.text = "You Win!"
            if i != 4 {
                timer!.invalidate()
            }
            startButton.isEnabled = true
            i = 4
        }
        if random == 1
        {
            titleLabel.text = "Tie"
            if i != 4 {
                timer!.invalidate()
            }
            startButton.isEnabled = true
            i = 4
        }
        if random == 2
        {
            titleLabel.text = "You Lose!"
            if i != 4 {
                timer!.invalidate()
            }
            startButton.isEnabled = true
            i = 4
        }
        print(random)
    }
    @IBAction func onScissorTap(_ sender: UITapGestureRecognizer) {
        
        random = Int(CGFloat.random(in: (0...3)))
        if random == 0
        {
            titleLabel.text = "You Lose!"
            if i != 4 {
                timer!.invalidate()
            }
            startButton.isEnabled = true
            i = 4
        }
        if random == 1
        {
            titleLabel.text = "You Win!"
            if i != 4 {
                timer!.invalidate()
            }
            startButton.isEnabled = true
            i = 4
            
        }
        if random == 2
        {
            titleLabel.text = "Tie"
            if i != 4 {
                timer!.invalidate()
            }
            startButton.isEnabled = true
            i = 4
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
        
        startButton.isEnabled = false
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
                if i == 0
                {
                    titleLabel.text = "You Lose!"
                    
                }
        }
    @objc func countDown()
    {
        i -= 1
        titleLabel.text = String(i)
        if i == 0
        {
            titleLabel.text = "You Lose!"
            timer!.invalidate()
            startButton.isEnabled = true
            i = 4
            
        }
    }
    
    @objc func doubleTapped() {
        
    }
    
}

