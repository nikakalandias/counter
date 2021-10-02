//
//  SecondViewController.swift
//  counterapp
//
//  Created by Nika Kalandia on 2.10.2021.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var headLine: UILabel!
    
    @IBOutlet weak var score: UILabel!
    
    @IBOutlet weak var info: UILabel!
    
    var score1 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        score.text = "Your Score:   \(score1)"

    }
    
    @IBAction func plusButton(_ sender: Any) {
        
        score1 = score1 + 5
        score.text = "Your Score:   \(score1)"
        
        if score1 == 100 {
            
            let alert = UIAlertController(title: "⭐", message: "Your score; 100! Congratulations!", preferredStyle: UIAlertController.Style.alert)
            
            let okButton = UIAlertAction(title: "Ok, cool!", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            
            self.present(alert, animated: true, completion: nil)
            
        }
        
    }
    
    @IBAction func resetButton(_ sender: Any) {
        
        score1 = 0
        score.text = "Your Score:   \(score1)"
        
    }
    
    
    
}
