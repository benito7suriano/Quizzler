//
//  BrainQuiz.swift
//  Quizzler-iOS13
//
//  Created by Beno Suriano on 7/Apr/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
                Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
                Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
                Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
                Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
                Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
                Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
                Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
                Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
                Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    
    var currentQuestion = 0
    var score = 0
    
    mutating func checkAnswer (_ userAnswer: String) -> Bool {
        if userAnswer == quiz[currentQuestion].answer {
            score += 1
            return true
        } else {
            return false
        }
    
    }
    
    func getQuestionText () -> String {
        return quiz[currentQuestion].text
    }
    
    func getButtonText (order: Int) -> String {
        return quiz[currentQuestion].choices[order]
    }
    
    func getProgress () -> Float {
        return Float(currentQuestion+1)/Float(quiz.count)
    }
    
    func getScore () -> Int {
        return score
    }
    
    mutating func nextQuestion() {
        if currentQuestion < quiz.count-1 {
            currentQuestion += 1
        } else if currentQuestion == quiz.count-1 {
            currentQuestion = 0
            score = 0
        }
    }
}
