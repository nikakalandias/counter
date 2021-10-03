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
    
    @IBOutlet weak var `try`: UILabel!
    
    var scoreV1 = 0
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }

    @IBAction func plusButton(_ sender: Any) {
         
        scoreV1 = scoreV1 + 1
        score.text = "Your Score:   \(scoreV1)"
        if scoreV1 == 10 {
            
            performSegue(withIdentifier: "toSecondVC", sender: nil)
            
        }
        
    }
    
    @IBAction func resetButton(_ sender: Any) {
        
        scoreV1 = 0
        score.text = "Your Score:   \(scoreV1)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destinationVC = segue.destination as! SecondViewController
        destinationVC.score1 = scoreV1
        
    }
    
}

