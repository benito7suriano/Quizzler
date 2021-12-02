//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionNumberLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var choice3Button: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    var quizBrain = QuizBrain()
    
    // objc func so that we can use it inside a Timer() as selector
    @objc func updateUI() {
        
        questionNumberLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        questionNumberLabel.text = "Question \(quizBrain.getQuestionNumber())"
        
        choice1Button.setTitle(quizBrain.getButtonText(order: 0), for: .normal)
        choice2Button.setTitle(quizBrain.getButtonText(order: 1), for: .normal)
        choice3Button.setTitle(quizBrain.getButtonText(order: 2), for: .normal)
        
        choice1Button.backgroundColor = UIColor.clear
        choice2Button.backgroundColor = UIColor.clear
        choice3Button.backgroundColor = UIColor.clear
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let answer = quizBrain.checkAnswer(userAnswer)
        
        if answer {
            print("Correct!!!")
            sender.backgroundColor = UIColor.green
        } else {
            print("Wrong!!!")
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.25, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
}

