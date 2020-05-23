//
//  WeatherViewModel.swift
//  SwiftUIDemo5
//
//  Created by Apple on 24/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import Foundation

class WeatherViewModel: ObservableObject {
    private var webservices: WeatherService!
    @Published var weather = Weather()
    init() {
        self.webservices = WeatherService()
    }
    
    var temperature: String {
        if let temp = self.weather.temp {
            return "\(temp)"
        }
        else {
            return ""
        }
    }
    
    var humidity: String {
        if let humidity = self.weather.humidity {
            return "\(humidity)"
        }
        else {
            return ""
        }
    }

    var cityName = ""
    
    func search() {
        if let city = self.cityName.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) {
            fetchWeather(by: city)
        }
    }
    
    private func fetchWeather(by city: String) {
        self.webservices.getWeather(city: city) { (weather) in
            if let weather = weather {
                DispatchQueue.main.async {
                    self.weather = weather
                }
            }
        }
    }
}
