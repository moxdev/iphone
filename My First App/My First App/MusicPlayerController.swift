//
//  ViewController.swift
//  My First App
//
//  Created by Mox on 5/19/16.
//  Copyright © 2016 MoxBiggs. All rights reserved.
//

import UIKit

class MusicPlayerController: UIViewController {
    
    @IBOutlet weak var MusicLabel: UILabel!
    @IBOutlet weak var playButtonOutlet: UIButton!
    @IBOutlet weak var volumeSlider: UISlider!
    @IBOutlet weak var nextButtonOutlet: UIButton!
    @IBOutlet weak var backButtonOutlet: UIButton!
    @IBOutlet weak var scrubberSlider: UISlider!
    
    
    @IBAction func scrubberSlider(sender: AnyObject) {
    }
    
    @IBAction func backButtonAction(sender: AnyObject) {
    }
    
    
    @IBAction func nextButtonAction(sender: AnyObject) {
    }
    
    
   
    @IBAction func volumeSliderAction(sender: AnyObject) {
        
    }
    
    
    @IBAction func playButtonAction(sender: AnyObject) {
        MusicLabel.text = "Hello"
        
        if playButtonOutlet.titleLabel?.text == "Play" {
            playButtonOutlet.setTitle("Pause", forState: .Normal)
        }else {
            playButtonOutlet.setTitle("Play", forState: .Normal)
        }
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

