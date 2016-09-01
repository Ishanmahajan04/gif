//
//  viewController2.swift
//  gifpage
//
//  Created by Ishan Mahajan on 30/08/16.
//  Copyright © 2016 Ishan Mahajan. All rights reserved.
//


import UIKit
import AVFoundation

class ViewController2: UIViewController {
    
   
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var imageView1: UIImageView!

var ButtonaudioURL = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("psy2", ofType: "mp3")!)
var ButtonAudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        do{
                ButtonAudioPlayer = try AVAudioPlayer(contentsOfURL: ButtonaudioURL)
                }
        catch{
            print("Error")
    }
            var imagesnames = ["win_1", "win_2", "win_3", "win_4", "win_5","win_6","win_7","win_8","win_9","win_10","win_11","win_12","win_13","win_14","win_15","win_16"]
        
        var images = [UIImage]()
        for i in 0..<imagesnames.count{
            images.append(UIImage(named: imagesnames[i])!)
        }
        
        imageView1.animationImages = images
        imageView1.startAnimating()
        

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func play(sender: AnyObject) {
        
        ButtonAudioPlayer.play()
    }
}
