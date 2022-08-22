//
//  QuestionModel.swift
//  QuizAppNew
//
//  Created by Jannatun Nahar Papia on 23/8/22.
//

import Foundation

struct QuestionModel:Identifiable, Codable {
    var id: String { UUID().uuidString }
    var question : String = ""
    var optionA : String  = ""
    var optionB : String  = ""
    var optionC : String  = ""
    var optionD : String  = ""
    var answer: String  = ""
    var sl : Int?
    
    enum CodingKeys: String, CodingKey {
        case question = "qustion"
        case optionA = "option1"
        case optionB = "option2"
        case optionC = "option3"
        case optionD  = "option4"
        case answer = "answer"
    }
    
    //for checking
    var isSubmitted = false
    var completed = false
}
