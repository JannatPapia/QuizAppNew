//
//  QAview.swift
//  QuizAppNew
//
//  Created by Jannatun Nahar Papia on 20/8/22.
//

import SwiftUI

//MARK: Question Answer view
struct QAview: View {
    @State var isSubmitted = false
    var body: some View {
        if isSubmitted  {
            ResultView()
        } else {
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
            .padding([.leading,.trailing,.top],10)
            ZStack{
                ForEach("Nazmul hasan".reversed().indices) { index in
                    QuestionView(isResultShow: $isSubmitted)
                }
            }
            .padding()
            Spacer(minLength: 0)
            
        }
    }
}



