//
//  Question.swift
//  Quizzler
//
//  Created by Stefania Izzo on 21/05/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    
    let questionText:String
    let answer:Bool
    
    // costruttore
    init(text:String, correctAnswer:Bool) {
        answer = correctAnswer
        questionText = text
    }
}
