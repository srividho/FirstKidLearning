//
//  LearningTopicsScreen.swift
//  1stLearning
//
//  Created by Sri on 01/01/23.
//

import SwiftUI

struct LearningTopicsScreen: View {
    
    @State private var navigateToAlphabetView: Bool = false
    @State private var navigateToShapeView: Bool = false
    @State private var navigateToColourView: Bool = false
    @State private var navigateToMonthView: Bool = false
    @State private var navigateToWeekView: Bool = false
    @State private var navigateToSeasonView: Bool = false
    
    var body: some View {
        NavigationView {
                List {
                    Button("Alphabet") {
                        self.navigateToAlphabetView = true
                    }
                    .fullScreenCover(isPresented: self.$navigateToAlphabetView, content: {AlphabetFlashcards()} )
                    
                    Button("Shape") {
                        self.navigateToShapeView = true
                    }
                    .fullScreenCover(isPresented: self.$navigateToShapeView, content: {ShapeFlashcards()} )
                    
                    Button("Colour") {
                        self.navigateToColourView = true
                    }
                    .fullScreenCover(isPresented: self.$navigateToColourView, content: {ColourFlashcards()} )
                    
                    Button("Month") {
                        self.navigateToMonthView = true
                    }
                    .fullScreenCover(isPresented: self.$navigateToMonthView, content: {MonthFlashcards()} )
                    
                    Button("Week") {
                        self.navigateToWeekView = true
                    }
                    .fullScreenCover(isPresented: self.$navigateToWeekView, content: {WeekFlashcards()} )
                    
                    Button("Season") {
                        self.navigateToSeasonView = true
                    }
                    .fullScreenCover(isPresented: self.$navigateToSeasonView, content: {SeasonFlashcard()} )
                    
                }
            .navigationTitle("Learning Topics")
            .navigationBarTitleDisplayMode(.inline)
            .foregroundColor(.black)
        }
    }
}

struct LearningTopicsScreen_Previews: PreviewProvider {
    static var previews: some View {
        LearningTopicsScreen()
    }
}
