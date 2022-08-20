//
//  QAview.swift
//  QuizAppNew
//
//  Created by Jannatun Nahar Papia on 20/8/22.
//

import SwiftUI

//MARK: Question Answer view
struct QAview: View {
    var body: some View {
       // IMPORTANT: Top progress view.....
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
            Spacer(minLength: 0)
        
    }
}

//struct QAview_Previews: PreviewProvider {
//    static var previews: some View {
//        QAview()
//    }
//}
