//
//  IntroView.swift
//  1stLearning
//
//  Created by Sri on 25/12/22.
//

import SwiftUI

struct IntroView: View {

    var body: some View {
        
        GeometryReader{ reader in
            
            NavigationView {
                VStack(){
                    Image("alphabet image")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: reader.size.height * (1/2))
                        .padding()
                        .offset(y: -60)
                    
                    Text("Happy Learning :)")
                        .font(.custom("DancingScript-Regular", size: 45))
                        .bold()
                        .offset(y: -90)
                    
                    Text("Childhood is not there to see how quickly a child can write and count. Childhood is a small window of time to learn and develop at the place that is right for each individual child!")
                        .font(Font.callout)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .padding()
                        .offset(y: -110)
                    
//MARK: - Action buttons
                    
                HStack {
                    NavigationLink(destination: ModuleInfoView() ) {
                        Text("Module info")
                            .font(Font.title3)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                            .foregroundColor(.white)
                            .background{
                                Capsule()
                                    .fill(Color.black)
                                }
                    }
                    
                    NavigationLink(destination: AlphabetFlashcards() ) {
                        Text("Let's Begin")
                            .font(Font.title3)
                            .padding(.horizontal, 25)
                            .padding(.vertical, 10)
                            .foregroundColor(.white)
                            .background {
                                Capsule()
                                    .fill(Color.black)
                        }
                    }
                }
                .offset(y: -50)
            }
         }
        .ignoresSafeArea()
      }
   }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
