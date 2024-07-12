//
//  SecondViewController.swift
//  Quizz_HP_V0
//
//  Created by Nicolas Blondet on 15/03/2023.
//

import UIKit

class QuizzViewController: UIViewController {

    @IBOutlet weak var secondviewLabel: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var AButton: UIButton!
    @IBOutlet weak var BButton: UIButton!
    @IBOutlet weak var CButton: UIButton!
    @IBOutlet weak var DButton: UIButton!
    
    var quizBrain = QuizBrain(quiz: normalQuiz)
    var difficultySelectedBool = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if difficultySelectedBool == 0 {
            //Normal difficulty quiz
            quizBrain = QuizBrain(quiz: normalQuiz)
        } else {
            //Hard difficulty quiz
            quizBrain = QuizBrain(quiz: hardQuiz)
        }
        
        updateUI()

    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            print("Correct")
            sender.backgroundColor = UIColor.green
        } else {
            print("Not Correct")
            sender.backgroundColor = UIColor.red
        }
        
        
        if quizBrain.checkquizEnd(){
            //Quiz isn't finished
            Timer.scheduledTimer(timeInterval: 0.2, target:self, selector: #selector(updateUI), userInfo:nil, repeats: false)
        } else {
            //Quiz is finished
            Timer.scheduledTimer(timeInterval: 0.2, target:self, selector: #selector(updateEndUI), userInfo:nil, repeats: false)
        }
        
        
        
    }
    
    //Update UI after user pushed answer button for the LAST question of quizz
    @objc func updateEndUI () {
        
        //print(countCorrect)
        //print(countNotCorrect)
        
        //print(quizBrain.quiz.count)
        //print(pourcentReussite)
        //self.dismiss(animated: true, completion: nil)
        quizBrain.questionNumber = 0
        updateUI()
        self.performSegue(withIdentifier: "goToResultView", sender: self)
        
//        AButton.backgroundColor = UIColor.clear
//        BButton.backgroundColor = UIColor.clear
//        CButton.backgroundColor = UIColor.clear
//        DButton.backgroundColor = UIColor.clear
        
//        AButton.isHidden = true
//        BButton.isHidden = true
//        CButton.isHidden = true
//        DButton.isHidden = true
//
//        restartButton.isHidden = false
        
    }
    
    
    //Update UI after user pushed answer button
    @objc func updateUI() {
        
        questionLabel.text = quizBrain.getQuestionText()
        let answerChoices = quizBrain.getButtonText()
        AButton.setTitle(answerChoices[0], for: .normal)
        BButton.setTitle(answerChoices[1], for: .normal)
        CButton.setTitle(answerChoices[2], for: .normal)
        DButton.setTitle(answerChoices[3], for: .normal)
        
        AButton.titleLabel?.minimumScaleFactor = 0.1
        AButton.titleLabel?.adjustsFontSizeToFitWidth = true
        AButton.titleLabel?.lineBreakMode = .byWordWrapping
        AButton.titleLabel?.textAlignment = NSTextAlignment.center
        
        BButton.titleLabel?.minimumScaleFactor = 0.1
        BButton.titleLabel?.adjustsFontSizeToFitWidth = true
        BButton.titleLabel?.lineBreakMode = .byWordWrapping
        BButton.titleLabel?.textAlignment = NSTextAlignment.center
        
        CButton.titleLabel?.minimumScaleFactor = 0.1
        CButton.titleLabel?.adjustsFontSizeToFitWidth = true
        CButton.titleLabel?.lineBreakMode = .byWordWrapping
        CButton.titleLabel?.textAlignment = NSTextAlignment.center
        
        DButton.titleLabel?.minimumScaleFactor = 0.1
        DButton.titleLabel?.adjustsFontSizeToFitWidth = true
        DButton.titleLabel?.lineBreakMode = .byWordWrapping
        DButton.titleLabel?.textAlignment = NSTextAlignment.center
        
        AButton.backgroundColor = UIColor.clear
        BButton.backgroundColor = UIColor.clear
        CButton.backgroundColor = UIColor.clear
        DButton.backgroundColor = UIColor.clear
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResultView" {
            let destinationVC = segue.destination as! EndViewController
            destinationVC.quizBrain = quizBrain
        }
    }

}
