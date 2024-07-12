//
//  NormalQuiz.swift
//  Quizz_HP_V0
//
//  Created by Nicolas Blondet on 07/03/2023.
//

import Foundation

let normalQuiz = [  //q = Question, a = answers
    //Ajouter 2 paramètres qui viennent de ConfigQuizz : "hpNumber" qui représente de quel volet d'HP est la question (de 1 à 7 - ou "Tous") / "Support" : questions des livres ou films
        Question(q: "Quels sont les prénoms des parents de Harry Potter ?", a: ["Hermione et Remus", "Lily et James", "Petunia et Vernon", "Vera et Tom"], correctAnswer: "Lily et James"),
        Question(q: "Quelles sont les trois monnaies du monde des sorciers ?", a: ["Les Galions d'or, les Mornilles d'argent et les Noises de bronze", "Les Galions d'or, les Noises d'argent et les Mornilles de bronze ", "Les Mornilles d'or, les Noises d'argent et les Galions de bronze", "Les Noises d'or, les Galions d'argent et les Mornilles de bronze"], correctAnswer: "Les Galions d'or, les Mornilles d'argent et les Noises de bronze"), //Trop long
        Question(q: "Quels sont les trois objets qui, réunis ensemble, forment les Reliques de la Mort ?", a: ["Le journal de Tom Jedusor, la baguette de Sureau et l'épée de Gryffondor", "L'épée de Gryffondor, la bague de Serpentard et le diadème de Serdaigle", "La baguette de Sureau, la cape d'invisibilité et la pierre de résurection", "La baguette de Sureau, la cape d'invisibilité et l'épée de Gryffondor"], correctAnswer: "La baguette de Sureau, la cape d'invisibilité et la pierre de résurection"), //Trop long
        Question(q: "Quel est le prénom du fondateur de la maison Gryffondor ?", a: ["Godric", "Gidric", "Rodric", "Ridric"], correctAnswer: "Godric")

    ]
