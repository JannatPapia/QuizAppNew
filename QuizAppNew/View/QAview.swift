//
//  QAview.swift
//  QuizAppNew
//
//  Created by Jannatun Nahar Papia on 20/8/22.
//

import SwiftUI

//MARK: Question Answer view
struct QAview: View {
    @Environment(\.presentationMode) var present
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .center),
               content: {
            Capsule()
                .fill(Color.gray.opacity(0.5))
                .frame(height: 6)
            
            Capsule()
                .fill(Color.green)
                .frame(width: 100, height: 6)
        })
        .padding([.leading,.trailing,.top],10)
        
        //MARK: Correct and Wrong count......
        
        HStack{
            Label(
                title : { ( Text("2"))
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
                },
                icon: {Image(systemName: "checkmark.circle")
                        .font(.largeTitle)
                        .foregroundColor(Color.green)
                })
            
            Spacer()
            
            Label(
                title : { ( Text("1"))
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
                },
                icon: {Image(systemName: "xmark.circle")
                        .font(.largeTitle)
                        .foregroundColor(Color.red)
                })
        }
        
//        Button(action: {
//            // closing sheet....
//            present.wrappedValue.dismiss()
//        }, label: {
//            Text("GoTo Home")
//                .fontWeight(.heavy)
//                .foregroundColor(.white)
//                .padding(.vertical)
//                .frame(width: UIScreen.main.bounds.width - 150)
//                .background(Color.blue)
//                .cornerRadius(15)
//        })
        
        .padding([.leading,.trailing,.top],10)
        ZStack{
            ForEach("Nazmul hasan".reversed().indices) { index in
                QuestionView()
            }
        }
        .padding()
        Spacer(minLength: 0)
    }
}

