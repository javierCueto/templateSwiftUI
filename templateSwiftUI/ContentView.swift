//
//  ContentView.swift
//  templateSwiftUI
//
//  Created by José Javier Cueto Mejía on 27/01/20.
//  Copyright © 2020 José Javier Cueto Mejía. All rights reserved.
//

import SwiftUI


// Dark mode
struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Previews")
                .font(.largeTitle)
            
            Text("Dark Mode")
                .foregroundColor(.gray)
            
            Text("By default, your preview show in light mode. to see it in dark mode, you can use the enviroment modifier")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.red)
                .layoutPriority(1)
                .foregroundColor(.white)
        }.font(.title)
    }
}


struct Preview_DarkMode_Previews: PreviewProvider {
    static var previews:
        some View {
        Group {
            ContentView() // Light Mode
//            ContentView().environment(\.colorScheme,.dark)
        }
    }
}
