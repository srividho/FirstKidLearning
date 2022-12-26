//
//  CardView.swift
//  1stLearning
//
//  Created by Sri on 25/12/22.
//

import SwiftUI

struct CardView: View {
    var img = ""
    var body: some View {
        VStack {
            Image(img)
                .resizable()
        }
        .frame(width: 260,height: 400)
        .cornerRadius(20)
    }
}
