//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Stefania Izzo on 23/05/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class QuestionBank{
    
    var list = [Question]()
    
    init() {
        let item = Question(text: "domanda1", correctAnswer: true)
        list.append(item)
        
        list.append(Question(text: "domanda2", correctAnswer: false))
    }
}
