//
//  ColourFlashcards.swift
//  1stLearning
//
//  Created by Sri on 25/12/22.
//

import SwiftUI

struct ColourFlashcards: View {
    
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
    }
}

struct ColourFlashcards_Previews: PreviewProvider {
    static var previews: some View {
        ColourFlashcards()
    }
}
