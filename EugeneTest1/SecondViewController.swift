//
//  SecondViewController.swift
//  EugeneTest1
//
//  Created by Burdukov Evgeniy on 8/1/22.
//

import UIKit
import AVFoundation

class SecondViewController: UIViewController {
    
    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var playButton: UIButton!
    
    var imageInt = 1
    
    var player: AVAudioPlayer?
    
    let sounds = ["a", "b", "c", "d", "e"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        backButton.isEnabled = false
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        imageInt = imageInt - 1
                self.lettersGallery()
    }
    

    @IBAction func nextButton(_ sender: UIButton) {
        imageInt = imageInt + 1
                self.lettersGallery()
    }
    
    
    @IBAction func playMusic() {
        if let player = player, player.isPlaying {
            
        } else {
            let urlString = Bundle.main.path(forResource: sounds[imageInt - 1], ofType: "mp3")
            do{
                try AVAudioSession.sharedInstance().setMode(.default)
                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                
                guard let urlString = urlString else {
                    return
                }
                
                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                
                guard let player = player else {
                    return
                }
                player.play()

            }
            catch {
                print("something went wrong")
            }
        }
    }
    
    func lettersGallery() {
            if imageInt == 1 {
                backButton.isEnabled = false
                ImageView.image =  UIImage(named: "a.png")
            }
            if imageInt == 2 {
                backButton.isEnabled = true
        
                ImageView.image =  UIImage(named: "b.png")
            }
            if imageInt == 3 {
                ImageView.image =  UIImage(named: "c.png")
            }
            if imageInt == 4 {
                nextButton.isEnabled = true
                ImageView.image =  UIImage(named: "d.png")
            }
            if imageInt == 5 {
                nextButton.isEnabled = false
                backButton.isEnabled = true
                ImageView.image =  UIImage(named: "e.png")
            }
    
    }
}
