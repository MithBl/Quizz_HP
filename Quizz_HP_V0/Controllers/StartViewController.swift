//
//  ViewController.swift
//  Quizz_HP_V0
//
//  Created by Nicolas Blondet on 22/02/2022.
//

import UIKit



class StartViewController: UIViewController {
    
    @IBOutlet weak var startButton: UIButton!
    //@IBOutlet weak var difficultySelected: UISegmentedControl!
    
    var ConfigQuizzController = ConfigQuizzViewController(difficultyConfigSelectedtoSend: false)
    
//    var difficultyConfigSelected = 0
//
//    var difficultyConfigSelected = ConfigQuizzController.difficultyConfigSelected.selectedSegmentIndex
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func startButtonPressed(_ sender: Any) {
        //L'utilisateur appuie sur le bouton Start et ca passe à l'écran Quizz (QuizzViewController)
        //self.dismiss(animated: true, completion: nil)
        self.performSegue(withIdentifier: "goToQuizzView", sender: self)
        
    }
    
    @IBAction func configButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToConfigQuizzView", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToQuizzView" {
            let destinationVC = segue.destination as! QuizzViewController
            destinationVC.difficultySelectedBool = difficultyConfigSelected
        }

    }
    
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        if segue.identifier == "goToQuizzView" {
    //            let destinationVC = segue.destination as! QuizzViewController
    //            destinationVC.difficultySelectedBool = difficultySelected.selectedSegmentIndex
    //        }
    //        if segue.identifier == "goToConfigQuizzView" {
    //            let destinationVC = segue.destination as! ConfigQuizzViewController
    //        }

    //    }
    
    

}

