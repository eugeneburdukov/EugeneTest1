//
//  ViewController.swift
//  EugeneTest1
//
//  Created by Burdukov Evgeniy on 8/1/22.
//

import UIKit

class ViewController: UIViewController {
        
    @IBOutlet weak var buttonOne: UIButton!
    
    @IBOutlet weak var buttonTwo: UIButton!
    
    @IBOutlet weak var buttonThree: UIButton!
    
    @IBOutlet weak var letterView: UIImageView!
    
    let images = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setLetter()
    }
    
    
    
   
    @IBAction func buttonFirst() {
        self.setLetter()
    }
    
    
    @IBAction func buttonSecond() {
        self.setLetter()
    }
    
    
    @IBAction func buttonThird() {
        self.setLetter()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    func setLetter() {
        let abc = ["Aa", "Bb", "Cc", "Dd", "Ee", "Ff", "Gg", "Hh", "Ii", "Jj", "Kk", "Ll", "Mm", "Nn", "Oo", "Pp", "Qq", "Rr", "Ss", "Tt", "Uu", "Vv","Ww", "Xx", "Yy", "Zz"]
        var letters: Set<Int> = []
        let position = Int.random(in: 1..<4)
        var index = 0
        repeat {
            index = Int.random(in: 1..<26);
        } while (letters.contains(index));
        
        letters.insert(index);
        
        switch (position) {
        case 1:
            buttonOne.setTitle(abc[index], for: .normal);
            if (index >= 24) {
                buttonTwo.setTitle(abc[1], for: .normal);
                buttonThree.setTitle(abc[0], for: .normal);
            } else {
                buttonTwo.setTitle(abc[index + 1], for: .normal);
                buttonThree.setTitle(abc[index + 2], for: .normal);
            }
            break;
        case 2:
            buttonTwo.setTitle(abc[index], for: .normal);
            if (index >= 24) {
                buttonOne.setTitle(abc[1], for: .normal);
                buttonThree.setTitle(abc[0], for: .normal);
            } else {
                buttonOne.setTitle(abc[index + 1], for: .normal);
                buttonThree.setTitle(abc[index + 2], for: .normal);
            }
            break;
        case 3:
            buttonThree.setTitle(abc[index], for: .normal);
            if (index >= 24) {
                buttonOne.setTitle(abc[1], for: .normal);
                buttonTwo.setTitle(abc[0], for: .normal);
            } else {
                buttonOne.setTitle(abc[index + 1], for: .normal);
                buttonTwo.setTitle(abc[index + 2], for: .normal);
            }
        default:
            buttonOne.setTitle("X", for: .normal)
            buttonTwo.setTitle("X", for: .normal)
            buttonThree.setTitle("X", for: .normal)
        }
        
        letterView.image =  UIImage(named: images[index])
}
}
