//
//  ViewController.swift
//  Project2
//
//  Created by Talha Gölcügezli on 6.11.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var scoreText: UILabel!
    
    var countries = [String]()
    var score = 0
    var correctAnswer = 0
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries += ["Estonia","France","Germany","Ireland","Italy",
                      "Monaco","Nigeria","Polland","Russia","Spain","Uk","Us"]
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .bookmarks, target: self, action: #selector(viewScore))
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        askQuestion()
        
    }
    
    func askQuestion(action: UIAlertAction! = nil) {
        countries.shuffle()
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)

        correctAnswer = Int.random(in: 0...2)
        title = countries[correctAnswer].uppercased()
    
        scoreText.text = "Score: \(score)"
        
        counterTheGame()
        
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        var title: String
        counter += 1
        
        if sender.tag == correctAnswer {
            title = "Correct!"
            score += 1
        } else {
            title = "Wrong!This is \(countries[sender.tag]) flag"
            score -= 1
        }
        
        let ac = UIAlertController(title: title, message: "Your score is \(score)", preferredStyle: .alert)
        
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
        
        present(ac, animated: true)
    }
    
    
    func counterTheGame() {
        if counter == 10 {
            let gameEnd = UIAlertController(title: "The End!", message: "Your score is \(score)", preferredStyle: .alert)
            present(gameEnd, animated: true)
        }
    }
    
    @objc func viewScore() {
        guard let scored = scoreText.text else {
            print("No saved score")
            return
        }
        
        let vc = UIActivityViewController(activityItems: [scored], applicationActivities: [])
        
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        
        present(vc, animated: true)
    }
    
}

