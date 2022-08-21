//
//  HomeView.swift
//  QuizAppNew
//
//  Created by Jannatun Nahar Papia on 20/8/22.
//

import SwiftUI

struct HomeView: View {
    
    @State var show = false
 // Storing level for fetching questions....
    @State var set = "Round_1"
    
    // for analytices.....
    @State var correct: Int = 0
    @State var wrong: Int = 0
    @State var answered: Int = 0
    
    var body: some View {
        VStack{
            // MARK: Title....
            Text("Revel Station")
                .font(.system(size: 38))
                .fontWeight(.heavy)
                .foregroundColor(.purple)
                .padding(.top)
            // MARK: SUb Title....
            Text("Choose the way \nyou play !!!")
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
                .padding(.top, 8)
                .multilineTextAlignment(.center)
            
            Spacer(minLength: 0)
            
            //MARK: Level View...
            
            //MARK: Level view...
              LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), spacing: 35, content: {
                  //MARK: four levels..
                  ForEach(1...4,id:\.self){ index in
                      VStack(spacing: 15) {
                          Image("lv\(index)")
                              .resizable()
                              .aspectRatio(contentMode: .fit)
                              .frame(height: 150)
                          
                          Text("SwiftUI Quiz")
                              .font(.title2)
                              .fontWeight(.heavy)
                              .foregroundColor(Color.black)
//                     //     Text("LEVEL \(index + 1)")
                          Text("LEVEL \(index)")
                              .foregroundColor(Color.black)
                      }
                                                .padding()
                                                .frame(maxWidth: .infinity)
                                                .background(Color.white)
                                                .cornerRadius(15)
                      
                      //MARK: opening QA view as sheet
                                                .onTapGesture(perform:  {
                                                    set = "Round_\(index)"
                                                    show.toggle()
                                                })
                  }
                  })
              .padding()
              Spacer(minLength: 0)
        }
        .background(Color.black.opacity(0.05))
        .sheet(isPresented: $show, content: {
              //    QAview(correct: $correct, wrong: $wrong, answered: $answered, set: set)
              })
        .ignoresSafeArea()
    }
}

//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
