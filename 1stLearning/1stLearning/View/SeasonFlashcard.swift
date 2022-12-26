//
//  SeasonFlashcard.swift
//  1stLearning
//
//  Created by Sri on 25/12/22.
//

import SwiftUI

struct SeasonFlashcard: View {
    
    var body: some View {
        
        NavigationView {
            VStack{
                Text("Seasons")
                    .font(.custom("DancingScript-Regular", size: 50))
                    .offset(y: -50)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(39..<43) { i in
                            CardView(img: "img\(i)").padding(5)
                        }
                    }
                }.offset(y: -50)
            }
        }
    }
}

struct SeasonFlashcard_Previews: PreviewProvider {
    static var previews: some View {
        SeasonFlashcard()
    }
}
