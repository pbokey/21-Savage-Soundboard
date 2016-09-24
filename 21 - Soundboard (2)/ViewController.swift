//
//  ViewController.swift
//  21 - Soundboard (2)
//
//  Created by Pranav Bokey on 9/24/16.
//  Copyright © 2016 Pranav Bokey. All rights reserved.
//

import UIKit
import AVFoundation

var knife = NSURL(fileURLWithPath: Bundle.main.path(forResource: "its_a_knife", ofType: "mp3")!)
var its_a_knife = AVAudioPlayer()

var twoOneSavage = NSURL(fileURLWithPath: Bundle.main.path(forResource: "21", ofType:"mp3")!)
var two_one = AVAudioPlayer()

var imSavage = NSURL(fileURLWithPath: Bundle.main.path(forResource: "21_savage", ofType:"mp3")!)
var im_savage = AVAudioPlayer()



class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.alpha = 0.3
        backgroundImage.image = UIImage(named: "atlanta@2x.jpg")
        self.view.insertSubview(backgroundImage, at: 0)
        // Do any additional setup after loading the view, typically from a nib.
        its_a_knife = try! AVAudioPlayer(contentsOf: knife as URL, fileTypeHint: nil)
        its_a_knife.prepareToPlay()
        two_one = try! AVAudioPlayer(contentsOf: twoOneSavage as URL, fileTypeHint: nil)
        two_one.prepareToPlay()
        im_savage = try! AVAudioPlayer(contentsOf: imSavage as URL, fileTypeHint: nil)
        im_savage.prepareToPlay()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func knifeButton(_ sender: AnyObject) {
        its_a_knife.play()
    }
    @IBAction func savageButton(_ sender: AnyObject) {
        two_one.play()
    }
    @IBAction func modeButton(_ sender: AnyObject) {
        im_savage.play()
    }
    
    
    @IBAction func stopButton(_ sender: AnyObject) {
        if (its_a_knife.isPlaying) {
            its_a_knife.stop()
            its_a_knife.currentTime = 0
        } else if(two_one.isPlaying){
            two_one.stop()
            two_one.currentTime = 0
        } else if(im_savage.isPlaying){
            im_savage.stop()
            im_savage.currentTime = 0
        } else{
            print("Nothing is playing!")
        }
    }
}

