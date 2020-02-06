//
//  ContentView.swift
//  templateSwiftUI
//
//  Created by José Javier Cueto Mejía on 27/01/20.
//  Copyright © 2020 José Javier Cueto Mejía. All rights reserved.
//

import SwiftUI


// some views pull In

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Layout Behavior")
                .font(.largeTitle)
            
            Text("Views that Pull In")
                .foregroundColor(Color.gray)
            
            Text("Some views minimize their frame size so it is only as big as the content within it.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundColor(Color.white)
                .layoutPriority(1)
            
           Image(systemName: "arrow.down.to.line.alt")
            HStack {
                // Order views horizontally
                Image(systemName: "arrow.right.to.line.alt")
                Text("Text views pull in")
                Image(systemName: "arrow.left.to.line.alt")
            }
            
            Image(systemName: "arrow.up.to.line.alt")
            Text("Pull-In views tend to center themselves within their parent container view.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundColor(Color.white)
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
