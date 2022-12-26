//
//  WeekFlashcards.swift
//  1stLearning
//
//  Created by Sri on 25/12/22.
//

import SwiftUI

struct WeekFlashcards: View {
    
    var body: some View {
        
        NavigationView {
            VStack{
                Text("Days of the week")
                    .font(.custom("DancingScript-Regular", size: 50))
                    .offset(y: -50)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(20..<27) { i in
                            CardView(img: "img\(i)").padding(5)
                        }
                    }
                }.offset(y: -50)
            }
        }
        .toolbar {
            NavigationLink("Next", destination: SeasonFlashcard() )
        }
    }
}

struct WeekFlashcards_Previews: PreviewProvider {
    static var previews: some View {
        WeekFlashcards()
    }
}
