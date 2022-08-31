//
//  QuestionModel.swift
//  QuizAppNew
//
//  Created by Jannatun Nahar Papia on 23/8/22.
//

import Foundation

//
//    RootClass.swift
//    Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct QuestionModel : Codable {
    
    let answer : String?
    let category : String?
    let image : String?
    let option1 : String?
    let option2 : String?
    let option3 : String?
    let option4 : String?
    let qustion : String?
    let sl : Int?
    
    
    enum CodingKeys: String, CodingKey {
        case answer = "answer"
        case category = "category"
        case image = "image"
        case option1 = "option1"
        case option2 = "option2"
        case option3 = "option3"
        case option4 = "option4"
        case qustion = "qustion"
        case sl = "sl"
    }
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        answer = try values.decodeIfPresent(String.self, forKey: .answer)
        category = try values.decodeIfPresent(String.self, forKey: .category)
        image = try values.decodeIfPresent(String.self, forKey: .image)
        option1 = try values.decodeIfPresent(String.self, forKey: .option1)
        option2 = try values.decodeIfPresent(String.self, forKey: .option2)
        option3 = try values.decodeIfPresent(String.self, forKey: .option3)
        option4 = try values.decodeIfPresent(String.self, forKey: .option4)
        qustion = try values.decodeIfPresent(String.self, forKey: .qustion)
        sl = try values.decodeIfPresent(Int.self, forKey: .sl)
    }
}


//var questions = [QuestionModel]()
//
//func localCalling(link: String) {
//
//    if let path = Bundle.main.path(forResource: "data", ofType: "json") {
//        do {
//              let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
//            let _posts = try? JSONDecoder().decode([QuestionModel].self, from: data)
//
//            for item in _posts! {
//                print(item.qustion)
//            }
//
//        } catch {
//               // handle error
//              //      print("error")
//          }
//    }
//}
//
////class QuestionViewModel:  ObservableObject {
////
////    @Published var question : [QuestionModel] = []
////    // var questions = [QuestionModel]()
////    func loadJjsonData(link: String) {
////        do {
////            if let file = Bundle.main.path(forResource: "data", ofType: "json") {
////                // ekhane data use kore file url pawar jonno data URL diye URL(fileURLWithPath: file) moddhe url(jsonfile) pass koresi
////                //data url used for pass in the path(JSONfile) just like thatURL(fileURLWithPath: file)
////                let data = try Data(contentsOf: URL(fileURLWithPath: file), options: .mappedIfSafe)
////                let items = try JSONDecoder().decode([QuestionModel].self, from: data)
////
////                self.question = items
////            }
////        }
////
////        catch let DecodingError.dataCorrupted(context) {
////            print(context)
////        } catch let DecodingError.keyNotFound(key, context) {
////            print("Key '\(key)' not found:", context.debugDescription)
////            print("codingPath:", context.codingPath)
////        } catch let DecodingError.valueNotFound(value, context) {
////            print("Value '\(value)' not found:", context.debugDescription)
////            print("codingPath:", context.codingPath)
////        } catch let DecodingError.typeMismatch(type, context)  {
////            print("Type '\(type)' mismatch:", context.debugDescription)
////            print("codingPath:", context.codingPath)
////        } catch {
////            print("error: ", error)
////        }
////    }
////}
