//
//  ViewController.swift
//  EugeneTest1
//
//  Created by Burdukov Evgeniy on 8/1/22.
//

import UIKit

class ViewController: UIViewController {
    
    let images = ["a", "b", "c", "d", "e"]

    @IBOutlet weak var buttonOne: UIButton!
    
    @IBOutlet weak var buttonTwo: UIButton!
    
    @IBOutlet weak var buttonThree: UIButton!
    
    @IBOutlet weak var letterView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        letterView.image =  UIImage(named: images[0])
        // Do any additional setup after loading the view.
    }
    
    
    
    


}

