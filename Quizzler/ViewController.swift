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
    var score : Int = 0
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if(sender.tag==1){
            pickedAnswer=true;
        }else if(sender.tag==2){
            pickedAnswer=false
        }
        checkAnswer();
        questionNumber = questionNumber + 1
        updateUI();
    }
    
    
    func updateUI() {
        scoreLabel.text = "Score:" + String(score)
        progressLabel.text = String(questionNumber)+"/\(allQuestions.list.count)"
        nextQuestion();

    }
    

    func nextQuestion() {
        if(questionNumber < allQuestions.list.count){
            questionLabel.text = allQuestions.list[questionNumber].questionText
        } else {
            let alert = UIAlertController(title: "Magnifico", message: "Quiz completato!", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Ricominciare?", style: .default,handler: {
                (alert:UIAlertAction) in
                self.startOver();
            })
            
            alert.addAction(restartAction);
            
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    func checkAnswer() {
        let correctAnswer = allQuestions.list[questionNumber].answer;
        
        if(correctAnswer==pickedAnswer){
            score = score + 1
        }
    }
    
    
    func startOver() {
        questionNumber = 0;
        score = 0;
        updateUI();
    }
    

    
}
