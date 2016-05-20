//
//  ViewController.swift
//  My First App
//
//  Created by Mox on 5/19/16.
//  Copyright © 2016 MoxBiggs. All rights reserved.
//

import UIKit
import AVFoundation //Look this up for controlling iPhone Audio

class MusicPlayerController: UIViewController {
    
    var av_player: AVAudioPlayer = AVAudioPlayer()
    
    var song_array = ["Battle at the misty valley", "Breath of Freedom", "Classical-bwv-bach"]
    
    var currentSongNum = 0
    
    @IBOutlet weak var MusicLabel: UILabel!
    @IBOutlet weak var playButtonOutlet: UIButton!
    @IBOutlet weak var volumeSlider: UISlider!
    @IBOutlet weak var nextButtonOutlet: UIButton!
    @IBOutlet weak var backButtonOutlet: UIButton!
    @IBOutlet weak var scrubberSlider: UISlider!
    
    
    @IBAction func scrubberSlider(sender: AnyObject) {
        
        
    }
    
    @IBAction func backButtonAction(sender: AnyObject) {
        if currentSongNum == 0 {
            currentSongNum  == song_array.count - 1
        }else {
            currentSongNum = (currentSongNum - 1)
        }
        
       

    }
    
    
    @IBAction func nextButtonAction(sender: AnyObject) {
        currentSongNum  == (currentSongNum + 1) % song_array.count
        av_init()
        av_player.play()
        
    }
    
    
   
    @IBAction func volumeSliderAction(sender: AnyObject) {
        av_player.volume = volumeSlider.value
        
    }
    
    
    @IBAction func playButtonAction(sender: AnyObject) {
        MusicLabel.text = "Hello"
        
        if playButtonOutlet.titleLabel?.text == "Play" {
            playButtonOutlet.setTitle("Pause", forState: .Normal)
            av_player.play()
            
        }else {
            playButtonOutlet.setTitle("Play", forState: .Normal)
            av_player.pause()
        }
    }
    
    func updateScrubber() {
        scrubberSlider.value = Float(av_player.currentTime / av_player.duration)
    }
    
    
    func av_init() {
        
        let audioPath = NSBundle.mainBundle().pathForResource(song_array[currentSongNum], ofType: "mp3")!
        
        do {
            try av_player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: audioPath))
        } catch {
            print("Error")
        }
        
        let timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateScrubber"), userInfo: nil, repeats: true)
        
        av_player.play()
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        av_init()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

