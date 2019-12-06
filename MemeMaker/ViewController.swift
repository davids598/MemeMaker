//
//  ViewController.swift
//  MemeMaker
//
//  Created by David Strathman on 6/14/19.
//  Copyright © 2019 David Strathman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var topCaptionLabel: UILabel!
    
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    
    var topChoices = [CaptionChoice]()
    var bottomChoices = [CaptionChoice]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let coolChoice = CaptionChoice(emoji: "🕶", caption: "You know what's cool!")
        let madChoice = CaptionChoice(emoji: "💥", caption: "You know what makes me mad?")
        let loveChoice = CaptionChoice(emoji:"💞", caption: "You know what I love?")
        
        topChoices = [coolChoice, madChoice, loveChoice]
        topCaptionSegmentedControl.removeAllSegments()
        for choice in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        topCaptionSegmentedControl.selectedSegmentIndex = 0
        
        let catChoice = CaptionChoice(emoji: "🐱", caption: "Cats wearing hats")
        let dogChoice = CaptionChoice(emoji: "🐶", caption: "Dogs carrying logs")
        let monkeyChoice = CaptionChoice(emoji: "🐵", caption: "Monkeys being funky")
        
        bottomChoices = [catChoice, dogChoice, monkeyChoice]
        bottomCaptionSegmentedControl.removeAllSegments()
        for choice in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0

        updateLabels()
        }
    
    
    func updateLabels() {
        let topIndex = topCaptionSegmentedControl.selectedSegmentIndex
        let bottomIndex = bottomCaptionSegmentedControl.selectedSegmentIndex
        
        let topChoice = topChoices[topIndex]
        let bottomChoice = bottomChoices[bottomIndex]
        
        topCaptionLabel.text = topChoice.caption
        bottomCaptionLabel.text = bottomChoice.caption
    }
    
    @IBAction func SegmentedControlSelected(_ sender: Any) {
        updateLabels()
    }
}

