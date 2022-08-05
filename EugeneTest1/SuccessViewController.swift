//
//  SuccessViewController.swift
//  EugeneTest1
//
//  Created by Burdukov Evgeniy on 8/5/22.
//

import UIKit

class SuccessViewController: UIViewController {

    @IBOutlet weak var labelVersion: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func button() {
        
        goToNewView()
        
    }
    
    func goToNewView() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "abcstoryboardid")
        controller.modalPresentationStyle = .fullScreen
        self.present(controller, animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
