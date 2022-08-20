//
//  QuestionModel.swift
//  QuizAppNew
//
//  Created by Jannatun Nahar Papia on 20/8/22.
//

import SwiftUI

struct Qustion:Identifiable, Codable {
    var id: String { UUID().uuidString }
    var question : String = ""
    var optionA : String  = ""
    var optionB : String  = ""
    var optionC : String  = ""
    var optionD : String  = ""
    var answer: String  = ""
    var sl : Int?
    
    enum CodingKeys: String, CodingKey {
         case question = "question"
         case optionA = "optionA"
         case optionB = "optionB"
         case optionC = "optionC"
         case optionD  = "optionD"
         case answer = "answer"
     }
    
 
    var isSubmitted = false
    var completed = false
}
