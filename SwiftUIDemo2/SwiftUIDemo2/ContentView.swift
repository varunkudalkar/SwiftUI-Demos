//
//  ContentView.swift
//  SwiftUIDemo2
//
//  Created by Apple on 23/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
    let arrData = Student.all()
    
    var body: some View {
        NavigationView {
            List(self.arrData, id: \.rno) { item in
//                NavigationLink(destination: Text("Codekul")) {
//                    StudentCell(item: item)
//                }
                NavigationLink(destination: DetailedView(item: item)) {
                    StudentCell(item: item)
                }

            }
            .navigationBarTitle("Students data")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
