//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Apple on 23/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("varun")
                .resizable()
                .aspectRatio(contentMode: .fit)
//                .clipShape(Circle())
                .cornerRadius(50)
            VStack(alignment: .center) {
                Text("Welcome to Codekul!")
                    .padding(.all)
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                Text("Swift-iOS")
                    .padding(.all)
                    .foregroundColor(.orange)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
