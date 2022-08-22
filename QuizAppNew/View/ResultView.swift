//
//  ResultView.swift
//  QuizAppNew
//
//  Created by Jannatun Nahar Papia on 21/8/22.
//

import SwiftUI

struct ResultView: View {
    @Environment(\.presentationMode) var present
    var body: some View {
        VStack(spacing: 25){
            Image("trophy")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250, height: 250)
            
            Text("Well Done !!!")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.black)
            
            //MARK: score and Back to home
            HStack(spacing: 15) {
                Image(systemName: "checkmark")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                
                Text("2")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                    .padding(.leading)
                
                Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.black)
            }
            Button(action: {
                //MARK: closing sheet....
                present.wrappedValue.dismiss()
            }, label: {
                Text("GoTo Home")
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 150)
                    .background(Color.pink.opacity(0.7))
                    .cornerRadius(15)
            })
        }
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
