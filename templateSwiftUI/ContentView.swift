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
            Text("Shapes")
                .font(.largeTitle)
            
            Text("Short Introduction")
                .foregroundColor(Color.gray)
            
            Text("I'll make shapes, give them color and put them behind other views just for decoration.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(Color.white)
                .layoutPriority(3)
            
            Text("This text has a rounded rectangle behind it")
                .foregroundColor(.white)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 20)// shape
                        .foregroundColor(.blue))// shape blue
                .padding()
                .layoutPriority(2)
            
            Text("But sometimes I'll use color and a corner radius:")
            
            
            Text("This text has a color with a corner radius")
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(20)
                .layoutPriority(1)
        
            
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
