//
//  ConfigQuizzViewController.swift
//  Quizz_HP_V0
//
//  Created by Nicolas Blondet on 15/05/2023.
//

import UIKit

class ConfigQuizzViewController: UIViewController {

    @IBOutlet weak var difficultyConfigSelected: UISegmentedControl!
    @IBOutlet weak var movieConfigSelected: UISwitch!
    @IBOutlet weak var bookConfigSelected: UISwitch!
    @IBOutlet weak var hp1ConfigSelected: UISwitch!
    @IBOutlet weak var hp2ConfigSelected: UISwitch!
    @IBOutlet weak var hp3ConfigSelected: UISwitch!
    @IBOutlet weak var hp4ConfigSelected: UISwitch!
    @IBOutlet weak var hp5ConfigSelected: UISwitch!
    @IBOutlet weak var hp6ConfigSelected: UISwitch!
    @IBOutlet weak var hp7ConfigSelected: UISwitch!
    
    var difficultyConfigSelectedtoSend = 0
    
    init(difficultyConfigSelectedtoSend: Bool) {
        self.difficultyConfigSelectedtoSend = difficultyConfigSelected.selectedSegmentIndex
    } 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    //protocol delegate

}
