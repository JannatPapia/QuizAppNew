//
//  QuestionView.swift
//  QuizAppNew
//
//  Created by Jannatun Nahar Papia on 21/8/22.
//

import SwiftUI

struct QuestionView: View {
    
    
    var body: some View {
        VStack(spacing: 22){
            // FOR QUESTION....
            Text("Why?")
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
                .padding(.top, 25)
            
            Spacer(minLength: 0)
            
            Button(action: {}, label: {
                Text("question.optionA")
                    .foregroundColor(Color.black)
                    .padding([.horizontal,.vertical],5)
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.black.opacity(0.5), lineWidth: 1)
                    )
            })
            
            //FOR OPTIONS....B
            
            Button(action: {}, label: {
                Text("question.optionB")
                    .foregroundColor(Color.black)
                    .padding([.horizontal,.vertical],5)
                    .frame(maxWidth: .infinity)
                    .background(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.black.opacity(0.5), lineWidth: 1)
            )
            })
            
            //FOR OPTIONS....C
            
            Button(action: {}, label: {
                Text("question.optionC")
                    .foregroundColor(Color.black)
                    .padding([.horizontal,.vertical],5)
                    .frame(maxWidth: .infinity)
                    .background(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.black.opacity(0.5), lineWidth: 1)
            )
            })
            
            //FOR OPTIONS....D
            
            Button(action: {}, label: {
                Text("question.optionD")
                    .foregroundColor(Color.black)
                    .padding([.horizontal,.vertical],5)
                    .frame(maxWidth: .infinity)
                    .background(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.black.opacity(0.5), lineWidth: 1)
            )
            })
            
            Spacer(minLength: 0)
            
            
            HStack(spacing: 15) {
                
                Button(action: {}, label: {
                    Text("Submit")
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(15)
                })
                
                
                // For next question Button....
                
                Button(action: {
                    withAnimation{
                        
                    }
                }, label: {
                    Text("Next")
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(15)
                })
            }
            .padding(.bottom)
            
        }
        .padding()
        .background(Color.white)
        .cornerRadius(25)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 5, y: 5)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: -5, y: -5)
    }
}

