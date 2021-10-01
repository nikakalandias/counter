//
//  ViewController.swift
//  counterapp
//
//  Created by Nika Kalandia on 1.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var headLine: UILabel!
    
    @IBOutlet weak var score: UILabel!
    
    var score1 = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plusButton(_ sender: Any) {
         
        score1 = score1 + 1
        score.text = "Your Score:   \(score1)"
        
    }
    
    @IBAction func resetButton(_ sender: Any) {
        
        score1 = 0
        score.text = "Your Score:   \(score1)"
    }
    
}

