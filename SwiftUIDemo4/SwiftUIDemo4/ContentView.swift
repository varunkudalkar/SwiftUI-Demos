//
//  ContentView.swift
//  SwiftUIDemo4
//
//  Created by Apple on 24/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var name = "Music Name"
    @State private var isPlaying = false
    
    var body: some View {
        VStack() {
            /*

            Text(name)
            TextField("Name", text: $name) // name variable bind to the textfield, when name changes textfield text also changes
            Button(action: {
                self.name = "Hello"
                print("\(self.name)")  //Print will only work on actual device or on simulator
            }){
                Text("Print")
            }
 */
            Text(name)
                .foregroundColor(self.isPlaying ? .green : .red)
            PlayButton(isPlaying: $isPlaying)
            
        }
    }
}

struct PlayButton: View {
    @Binding var isPlaying: Bool
    var body: some View {
        Button(action: {
            self.isPlaying.toggle()
        }){
            Text(self.isPlaying ? "Pause" : "Play")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
