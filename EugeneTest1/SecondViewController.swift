//
//  SecondViewController.swift
//  EugeneTest1
//
//  Created by Burdukov Evgeniy on 8/1/22.
//

import UIKit
import AVFoundation

class SecondViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    var imageInt = 1
    
//    var soundInt = ""
//
//    let sounds = ["a", "b", "c", "d", "e"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        backButton.isEnabled = false
        
//        let sound = Bundle.main.path(forResource: "a", ofType: "mp3")
//
//
//        do {
//        // We try to get the initialize it with the URL we created above
//            audioPlayer = try AVAudioPlayer(contentsOf: URL (fileURLWithPath: sound!) )
//        }
//        catch{
//        // It will print any error.
//        print (error)
//        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
//    @IBAction func playSoundButton(_ sender: UIButton) {
//
//        let audioPath = Bundle.main.path(forResource: "a", ofType: "mp3")
//    }
    
    @IBAction func backButton(_ sender: UIButton) {
        imageInt = imageInt - 1
                self.lettersGallery()
    }
    

    @IBAction func nextButton(_ sender: UIButton) {
        imageInt = imageInt + 1
                self.lettersGallery()
    }
    
    func lettersGallery() {
            if imageInt == 1 {
                backButton.isEnabled = false
                ImageView.image =  UIImage(named: "a.png")
            }
            if imageInt == 2 {
        
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
