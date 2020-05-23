//
//  ContentView.swift
//  SwiftUIDemo5
//
//  Created by Apple on 24/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var weatherVM: WeatherViewModel
    
    init() {
        self.weatherVM = WeatherViewModel()
    }
    var body: some View {
        VStack {
            TextField("Enter city name", text: self.$weatherVM.cityName) {
                self.weatherVM.search()
            }
            .padding(.horizontal, 10.0)
            .frame(width: 200.0, height: 40)
            .background(Color.gray)
            Text(self.weatherVM.temperature.count == 0 ? "0" : self.weatherVM.temperature)
            .padding()
                .background(Color.blue)
                .foregroundColor(.yellow)
                .font(.largeTitle)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
