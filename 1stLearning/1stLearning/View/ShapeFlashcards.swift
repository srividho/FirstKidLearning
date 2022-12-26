//
//  ShapeFlashcards.swift
//  1stLearning
//
//  Created by Sri on 25/12/22.
//

import SwiftUI

struct ShapeFlashcards: View {
    
    var body: some View {
        
        NavigationView {
            VStack{
                Text("Shape")
                    .font(.custom("DancingScript-Regular", size: 50))
                    .offset(y: -50)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<10) { i in
                            CardView(img: "img\(i)").padding(5)
                        }
                    }
                }.offset(y: -50)
            }
        }
        .toolbar {
            NavigationLink("Next", destination: ColourFlashcards() )
        }
    }
}

struct ShapeFlashcards_Previews: PreviewProvider {
    static var previews: some View {
        ShapeFlashcards()
    }
}



