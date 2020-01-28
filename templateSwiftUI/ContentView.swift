//
//  ContentView.swift
//  templateSwiftUI
//
//  Created by José Javier Cueto Mejía on 27/01/20.
//  Copyright © 2020 José Javier Cueto Mejía. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Images")
                .font(.largeTitle)
            
            Text("Using SF Symbols")
                .foregroundColor(Color.gray)
            
            Text("You will see I use icons or symbols to add clarity to what I'm demonstrating. These come from Apple's new symbol font library which you can browse using an app called 'SF Symbols'.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(Color.white)
                .layoutPriority(1)
            
            Image(systemName: "hand.thumbsup.fill")
                .font(.largeTitle)
            
            Image("SF Symbols")
              
                
        
            
        }
        .font(.title)
        .edgesIgnoringSafeArea(.bottom)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
