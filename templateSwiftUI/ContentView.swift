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
            Text("Layers")
                .font(.largeTitle)
            
            Text("The basics")
                .foregroundColor(Color.gray)
            
            Text("With SwiftUI views, you can add layers on top (.overlay) and behind (.background) the view.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(Color.white)
                .layoutPriority(1)
            
            Image("SF Symbols")
                .opacity(0.7)
                .background(Color.red.opacity(0.3)) //behind image
                .background(Color.yellow.opacity(0.3))
                //behind red
                .background(Color.blue.opacity(0.3))
                //behid yellow
                .overlay(Text("Yosemite"))
                //layer on top of image
            
            Image("Layers")
              
                
        
            
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
