//
//  ModuleView.swift
//  1stLearning
//
//  Created by Sri on 25/12/22.
//

import SwiftUI

struct ModuleInfoView: View {
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                Image("learning image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .offset(y: -10)
                
                Text("Learning is an important part of a child’s life. Kids learning starts from early childhood and continues throughout their lives. Learning should be fun, engaging and interactive. It should pique their curiosity and make them want to discover and learn more.")
                    .font(.callout)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .padding()
                    .offset(y: -30)
                
                Text("This module will assist children in learning about **fundamental learning topics.**")
                    .font(.callout)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .padding()
                    .offset(y: -40)
                
                Text("The **flashcards** will help the children learn those topics and will be simple to understand. The topics covered are _alphabet, shape, colour, month, week, and season._")
                    .font(.callout)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .padding()
                    .offset(y: -50)
                
                Text("Learning can happen anywhere, not just in the classroom !")
                    .font(.custom("Sacramento-Regular", size: 25))
                    .multilineTextAlignment(.center)
                    .padding()
                    .offset(y: -60)
            }
        }
    }
}

struct ModuleInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ModuleInfoView()
    }
}
