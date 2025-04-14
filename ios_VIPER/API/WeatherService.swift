//
//  WeatherService.swift
//  ios_VIPER
//
//  Created by Ilona on 4/14/25.
//

import Foundation

class WeatherService {
    func getWeather(completion: @escaping(Int) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            let temprature: Int = Int.random(in:-30...30)
            completion(temprature)
        }
    }
}
