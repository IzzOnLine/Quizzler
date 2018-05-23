//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstQuestion = allQuestions.list[questionNumber];
        questionLabel.text = firstQuestion.questionText;
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if(sender.tag==1){
            pickedAnswer=true;
        }else if(sender.tag==2){
            pickedAnswer=false
        }
        checkAnswer();
        questionNumber = questionNumber + 1
        nextQuestion();
    }
    
    
    func updateUI() {
      
    }
    

    func nextQuestion() {
        if(questionNumber < allQuestions.list.count){
            questionLabel.text = allQuestions.list[questionNumber].questionText
        } else if(questionNumber >= allQuestions.list.count){
            print("END")
            questionNumber = 0;
        }
    }
    
    
    func checkAnswer() {
        let correctAnswer = allQuestions.list[questionNumber].answer;
        
        if(correctAnswer==pickedAnswer){
            print("OK");
        }
        
        

    }
    
    
    func startOver() {
       
    }
    

    
}
