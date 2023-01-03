//
//  SplashScreen.swift
//  1stLearning
//
//  Created by Sri on 26/12/22.
//

import SwiftUI

struct SplashScreen: View {
    
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        
        if isActive {
            ContentView()
        } else {
            VStack{
                VStack{
                    Image("Appscreen")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 300)

                    Text("First Kid Learning")
                        .font(.custom("Pacifico-Regular", size: 25))
                        .offset(y: -90)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            /* Duration of the screen, here setted as 2 secs */
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
