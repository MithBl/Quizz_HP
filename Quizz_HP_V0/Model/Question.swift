//
//  Question.swift
//  Quizz_HP_V0
//
//  Created by Nicolas Blondet on 28/02/2023.
//

import Foundation

//struct Question {
//    let question: String
//    let answerA: String
//    let answerB: String
//    let answerC: String
//    let answerD: String
//    let rightAnswer: String
//
//    init(q:String, a:String, b:String, c: String, d:String, correctAnswer:String) {
//        question = q
//        answerA = a
//        answerB = b
//        answerC = c
//        answerD = d
//        rightAnswer = correctAnswer
//    }
//}

struct Question {
    let question: String
    let answers: [String]
    let rightAnswer: String
    
    init(q:String, a:[String], correctAnswer: String) {
        question = q
        answers = a
        rightAnswer = correctAnswer
    }
}
