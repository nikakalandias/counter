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
    
    @IBOutlet weak var forgetLabel: UILabel!
    
    @IBOutlet weak var timer: UILabel!
    
    var scoreV1 = 0
    
    var timers = Timer()
    var counter = 10
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter = 10
        timer.text = "Timer; \(counter)"
        
        timers = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunc), userInfo: nil, repeats: true)

        
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
    
    @objc func timerFunc() {
        
        timer.text = "Time; \(counter)"
        counter = counter - 1

        
        if counter == 0 {
            
            timers.invalidate()
            timer.text = "Time's Over!"
            
            let alert = UIAlertController(title: "Your time is over!", message: "Do you wanna play again?", preferredStyle: UIAlertController.Style.alert)
            let playButton = UIAlertAction(title: "Play again!", style: UIAlertAction.Style.default) { (UIAlertAction) in
                
                self.counter = 10
                self.scoreV1 = 0
                self.score.text = "Your Score:   \(self.scoreV1)"
                self.timer.text = "Timer; \(self.counter)"
                
                self.timers = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.timerFunc), userInfo: nil, repeats: true)
                
                
            }
            
            alert.addAction(playButton)
            
            self.present(alert, animated: true, completion: nil)
        }
    }
    
}

