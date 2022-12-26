//
//  MonthFlashcards.swift
//  1stLearning
//
//  Created by Sri on 25/12/22.
//

import SwiftUI

struct MonthFlashcards: View {
    
    var body: some View {
        
        NavigationView {
            VStack{
                Text("Months")
                    .font(.custom("DancingScript-Regular", size: 50))
                    .offset(y: -50)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(27..<39) { i in
                            CardView(img: "img\(i)").padding(5)
                        }
                    }
                }.offset(y: -50)
            }
        }
        .toolbar {
            NavigationLink("Next", destination: WeekFlashcards() )
        }
    }
}

struct MonthFlashcards_Previews: PreviewProvider {
    static var previews: some View {
        MonthFlashcards()
    }
}
