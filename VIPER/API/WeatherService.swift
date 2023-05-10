//
//  WeatherService.swift
//  VIPER
//
//  Created by Sergei Semko on 5/10/23.
//

import Foundation

class WeatherService {
    func getWeather(completion: @escaping (Int) -> Void) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            let temperature = Int.random(in: -30...30)
            completion(temperature)
        }
    }
}
