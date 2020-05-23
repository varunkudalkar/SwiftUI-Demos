//
//  ContentView.swift
//  SwiftUIDemo3
//
//  Created by Apple on 23/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var name = "Codekul"
    var body: some View {
        VStack {
            Text(name)
            Button(action: {
                self.name = "Swift-iOS"
            }) {
                Text("Click me !")
            }
            
            Button(action: buttonClick) {
                Text("Clicl me also")
            }
        }
    }
    
    func buttonClick() {
        self.name = "Data changed"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
