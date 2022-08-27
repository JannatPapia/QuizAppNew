//
//  HomeView.swift
//  QuizAppNew
//
//  Created by Jannatun Nahar Papia on 20/8/22.
//

import SwiftUI

struct HomeView: View {
    @State var show = false
 //   @StateObject var viewModel : QuestionModel //create instance for questionViewModel
    var body: some View {
        ZStack {
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
                
                //MARK: Level view...
                Spacer(minLength: 0)
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), spacing: 35, content: {
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
                            
                            Text("LEVEL \(index)")
                                .foregroundColor(Color.black)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(15)
                        // opening QA view as sheet....
                        .onTapGesture {
                            show.toggle()
                        }
                    }
                })
                .padding()
                Spacer(minLength: 0)
            }
            .background(Color.black.opacity(0.05).ignoresSafeArea())
            .onAppear{
                //load json data here. ....... 1st
                loadData()
            
            }
            .fullScreenCover(isPresented: $show, content: {
                QAview()
            })
        }
    }
    
    func loadData() {
    
        if let path = Bundle.main.path(forResource: "data", ofType: "json") {
            do {
                  let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let _posts = try? JSONDecoder().decode([QuestionModel].self, from: data)
    
                for item in _posts! {
                    print(item.option1)
                }
    
            } catch {
                   // handle error
                   //     print("error")
                print(error)
              }
        }
    }
    
    
}
