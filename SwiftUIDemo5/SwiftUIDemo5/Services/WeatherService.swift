//
//  WeatherService.swift
//  SwiftUIDemo5
//
//  Created by Apple on 24/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import Foundation

class WeatherService {
    
    func getWeather(city: String, completion: @escaping (Weather?) -> ()) {
        let url = URL(string: "https://samples.openweathermap.org/data/2.5/weather?q=\(city)&appid=439d4b804bc8187953eb36d2a8c26a02")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error == nil {
                let weatherResponse = try! JSONDecoder().decode(WeatherResponse.self, from: data!)
                let weather = weatherResponse.main
                completion(weather)
            }
        }.resume()
        
        
    }
}
