//
//  AlphabetFlashcards.swift
//  1stLearning
//
//  Created by Sri on 25/12/22.
//

import SwiftUI

struct AlphabetFlashcards: View {
    
    var body: some View {
        
        NavigationView {
            VStack{
                Text("Alphabet")
                    .font(.custom("DancingScript-Regular", size: 50))
                    .offset(y: -50)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(43..<69) { i in
                            CardView(img: "img\(i)").padding(5)
                        }
                    }
                }.offset(y: -50)
            }
        }
        .toolbar {
            NavigationLink("Next", destination: ShapeFlashcards() )
        }
    }
}

struct AlphabetFlashcards_Previews: PreviewProvider {
    static var previews: some View {
        AlphabetFlashcards()
    }
}
