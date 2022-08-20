//
//  HomeView.swift
//  QuizAppNew
//
//  Created by Jannatun Nahar Papia on 20/8/22.
//

import SwiftUI

struct HomeView: View {
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
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
