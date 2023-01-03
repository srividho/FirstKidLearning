//
//  AlphabetFlashcards.swift
//  1stLearning
//
//  Created by Sri on 25/12/22.
//

import SwiftUI

struct AlphabetFlashcards: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    var img = Image(systemName: "chevron.backward.2")
    
    var body: some View {
        ZStack{
            HStack{
                Button("\(img)") {
                    self.mode.wrappedValue.dismiss()
                }
                .font(.custom("", size: 25))
            }
            .offset(x: -175)
            .offset(y: -350)

            VStack(){
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
    }
}

struct AlphabetFlashcards_Previews: PreviewProvider {
    static var previews: some View {
        AlphabetFlashcards()
    }
}

//        .toolbar {
//            NavigationLink("Next", destination: ShapeFlashcards() )
//        }


