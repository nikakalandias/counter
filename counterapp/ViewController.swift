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
    
    var scoreV1 = 0
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }

    @IBAction func plusButton(_ sender: Any) {
         
        scoreV1 = scoreV1 + 1
        score.text = "Your Score:   \(scoreV1)"
        
    }
    
    @IBAction func resetButton(_ sender: Any) {
        
        scoreV1 = 0
        score.text = "Your Score:   \(scoreV1)"
    }
    
    @IBAction func secondPage(_ sender: Any) {
        
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destinationVC = segue.destination as! SecondViewController
        destinationVC.score1 = scoreV1
        
    }
    
}

