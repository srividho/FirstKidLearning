//
//  ColourFlashcards.swift
//  1stLearning
//
//  Created by Sri on 25/12/22.
//

import SwiftUI

struct ColourFlashcards: View {
    
    var body: some View {
        
        NavigationView {
            VStack{
                Text("Colour")
                    .font(.custom("DancingScript-Regular", size: 50))
                    .offset(y: -50)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(10..<20) { i in
                            CardView(img: "img\(i)").padding(5)
                        }
                    }
                }.offset(y: -50)
            }
        }
        .toolbar {
            NavigationLink("Next", destination: MonthFlashcards() )
        }
    }
}

struct ColourFlashcards_Previews: PreviewProvider {
    static var previews: some View {
        ColourFlashcards()
    }
}
