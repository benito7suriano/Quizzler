//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Beno Suriano on 6/Apr/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let choices: Array<String>
    let answer: String
    
    init(q: String, a: Array<String>, correctAnswer: String) {
        self.text = q
        self.choices = a
        self.answer = correctAnswer
    }
}

