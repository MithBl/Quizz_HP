//
//  EndViewController.swift
//  Quizz_HP_V0
//
//  Created by Nicolas Blondet on 27/03/2023.
//

import UIKit

class EndViewController: UIViewController {
    
    var quizBrain = QuizBrain(quiz: normalQuiz)
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        resultLabel.text = "Quizz finit ! \n \(quizBrain.countCorrect) Bonnes réponses \n \(quizBrain.countNotCorrect) Mauvaises réponses \n Taux de réussite \n \(quizBrain.getpourcentReussite())% \n \(quizBrain.getphraseLevel())"
        quizBrain.countCorrect = 0
        quizBrain.countNotCorrect = 0
    }
    
    @IBAction func restartButtonPressed(_ sender: Any) {
        
        
        //quizBrain.countCorrect = 0
        //quizBrain.countNotCorrect = 0
        
        self.dismiss(animated: true, completion: nil)
        //performSegue(withIdentifier: "goBackToQuizzView", sender: self)
    }

    @IBAction func homeButtonPressed(_ sender: UIButton) {
        //performSegue(withIdentifier: "goBackToStartView", sender: self)
        self.view.window!.rootViewController?.dismiss(animated: false, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
