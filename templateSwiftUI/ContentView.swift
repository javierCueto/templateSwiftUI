//
//  ContentView.swift
//  templateSwiftUI
//
//  Created by José Javier Cueto Mejía on 27/01/20.
//  Copyright © 2020 José Javier Cueto Mejía. All rights reserved.
//

import SwiftUI


// Some Views Push Out

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            
           Text("Layout Behavior")
            Text("Views that Push Out")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("Some views will push out to fill up all available space within their parent.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.purple)
                .layoutPriority(1)
            
            Color.purple
            // Add 5 layers on top of the color view
                .overlay(
                    Image(systemName: "arrow.up.left")
                        .padding() // Add spacing around the symbol
                    ,alignment: .topLeading) // Align within the layer
                .overlay(
                    Image(systemName: "arrow.up.right")
                        .padding()
                    , alignment: .topTrailing)
                .overlay(
                    Image(systemName: "arrow.down.left")
                        .padding()
                    , alignment: .bottomLeading)
                .overlay(
                        Image(systemName: "arrow.down.right")
                            .padding()
                    , alignment: .bottomTrailing)
                .overlay(Text("Colors are Push-Out views"))
        
            
        }
        .font(.largeTitle)
        //.edgesIgnoringSafeArea(.bottom)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
