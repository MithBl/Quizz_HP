//
//  QuizBrain.swift
//  Quizz_HP_V0
//
//  Created by Nicolas Blondet on 28/02/2023.
//

import Foundation

class QuizBrain {
    
    let quiz: [Question]
    
    init(quiz: [Question]) {
        self.quiz = quiz
    }
//    let quiz = [ // q = Question, a = answers
//        Question(q: "Quels sont les prénoms des parents de Harry Potter ?", a: ["Hermione et Remus", "Lily et James", "Petunia et Vernon", "Vera et Tom"], correctAnswer: "Lily et James"),
//        Question(q: "Quelles sont les trois monnaies du monde des sorciers ?", a: ["Les Galions d'or, les Mornilles d'argent et les Noises de bronze", "Les Galions d'or, les Noises d'argent et les Mornilles de bronze ", "Les Mornilles d'or, les Noises d'argent et les Galions de bronze", "Les Noises d'or, les Galions d'argent et les Mornilles de bronze"], correctAnswer: "Les Galions d'or, les Mornilles d'argent et les Noises de bronze"), //Trop long
//        Question(q: "Quels sont les trois objets qui, réunis ensemble, forment les Reliques de la Mort ?", a: ["Le journal de Tom Jedusor, la baguette de Sureau et l'épée de Gryffondor", "L'épée de Gryffondor, la bague de Serpentard et le diadème de Serdaigle", "La baguette de Sureau, la cape d'invisibilité et la pierre de résurection", "La baguette de Sureau, la cape d'invisibilité et l'épée de Gryffondor"], correctAnswer: "La baguette de Sureau, la cape d'invisibilité et la pierre de résurection"), //Trop long
//        Question(q: "Quel est le prénom du fondateur de la maison Gryffondor ?", a: ["Godric", "Gidric", "Rodric", "Ridric"], correctAnswer: "Godric")
//
//    ]
//
//    let hardquiz = [
//        Question(q: "Quel est le prénom du père de Cedric Diggory", a: ["Rufus", "Amos", "Dean", "Damas"], correctAnswer: "Amos")
//        // En qui Harry potter se transforme-t-il lorsqu'il infiltre le ministere de la magie?
//    ]
    
    let phrasesArray = ["Très Mauvais", "Mauvais", "Bon", "Très bon", "Sorcier légendaire"
    ]
    
    var questionNumber = 0
    var countCorrect = 0
    var countNotCorrect = 0
    var pourcentReussite: Float = 0
    var phraseLevel = ""
    
    //Check If user Answer is right or not
    func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].rightAnswer {
            countCorrect += 1
            print(countCorrect)
            return true
        } else {
            countNotCorrect += 1
            print(countNotCorrect)
            return false
        }
    }
    
    //Check if the quiz is finished or not
    func checkquizEnd() -> Bool {
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
            return true
        } else {
            return false
        }
    }
    
    
    func getQuestionText() -> String {
        return quiz[questionNumber].question
    }
    
    func getButtonText() -> [String] {
        return quiz[questionNumber].answers
    }
    
    func getpourcentReussite() -> Int {
        pourcentReussite = (Float(countCorrect)/Float(quiz.count)) * 100
        return Int(pourcentReussite)
    }
    
    func getphraseLevel() -> String {
        switch Int(pourcentReussite) {
        case 0...24:
            print(phrasesArray[0])
            phraseLevel = phrasesArray[0]
        case 25...49:
            print(phrasesArray[1])
            phraseLevel = phrasesArray[1]
        case 50...74:
            print(phrasesArray[2])
            phraseLevel = phrasesArray[2]
        case 75...99:
            print(phrasesArray[3])
            phraseLevel = phrasesArray[3]
        case 100:
            print(phrasesArray[4])
            phraseLevel = phrasesArray[4]
        default:
            print("ERROR")
            phraseLevel = "Error on phraseLevel"
            
        }
        return phraseLevel
        
    }
    
}
