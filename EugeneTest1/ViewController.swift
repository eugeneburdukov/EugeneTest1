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
    
    @IBOutlet weak var rightLabel: UILabel!
    
    @IBOutlet weak var wrongLabel: UILabel!
    
    var correctAnswer: Int = 0
    
    var incorrectAnswer: Int = 0
    
    var position: Int = 0
    
    let images = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setLetter()
    }
   
    @IBAction func buttonFirst() {
        
        if position == 1 {
            self.setLetter()
            correctAnswer += 1
            self.rightLabel.text = String(correctAnswer)
        } else {
            self.setLetter()
            incorrectAnswer += 1
            self.wrongLabel.text = String(incorrectAnswer)
        }
        goToSuccessPage()
    }
    
    
    @IBAction func buttonSecond() {
        if position == 2 {
            self.setLetter()
            correctAnswer += 1
            self.rightLabel.text = String(correctAnswer)
        } else {
            self.setLetter()
            incorrectAnswer += 1
            self.wrongLabel.text = String(incorrectAnswer)
        }
        goToSuccessPage()
    }
    
    
    @IBAction func buttonThird() {
        if position == 3 {
            self.setLetter()
            correctAnswer += 1
            self.rightLabel.text = String(correctAnswer)
        } else {
            self.setLetter()
            incorrectAnswer += 1
            self.wrongLabel.text = String(incorrectAnswer)
        }
        goToSuccessPage()
    }
    
    func goToSuccessPage() {
        if (correctAnswer + incorrectAnswer) == 10 {
            goToNewView()
        }
    }
    
    func goToNewView() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "SuccessStoryBoardID")
//        controller.modalPresentationStyle = .fullScreen
        self.present(controller, animated: true, completion: nil)
    }
    
    func setLetter() {
        let abc = ["Aa", "Bb", "Cc", "Dd", "Ee", "Ff", "Gg", "Hh", "Ii", "Jj", "Kk", "Ll", "Mm", "Nn", "Oo", "Pp", "Qq", "Rr", "Ss", "Tt", "Uu", "Vv","Ww", "Xx", "Yy", "Zz"]
        var letters: Set<Int> = []
        position = Int.random(in: 1..<4)
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
            buttonOne.setTitle("Err", for: .normal)
            buttonTwo.setTitle("Err", for: .normal)
            buttonThree.setTitle("Err", for: .normal)
        }
        
        letterView.image =  UIImage(named: images[index])
}
}
