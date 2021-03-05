//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Raj Tailor on 03/04/2021.
//  Copyright © 2021 Raj Tailor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    let example = Story(t: "You see a fork in the road", c1: "Left", c2: "Right")
    
    let stories: [Story] = [Story(t: "You see a fork in the road", c1: "Left", c2: "Right"),
                            Story(t: "You see a Tiger", c1: "Shout for help", c2: "Play Dead"),
                            Story(t: "You find a treasure chest", c1: "Open It", c2: "Check for traps")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(0)
    }
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        if sender.titleLabel?.text == "Left"{
            updateUI(1)
        } else {
            updateUI(2)
        }
        
    }
    
    func updateUI(_ pos: Int){
        storyLabel.text = stories[pos].storyTitle
        choice1Button.setTitle(stories[pos].choice1, for: .normal)
        choice2Button.setTitle(stories[pos].choice2, for: .normal)
    }
    

}

