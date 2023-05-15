//
//  CurrentWeather.swift
//  Weather
//
//  Created by Yehor Krupiei on 15.05.2023.
//
//

import Foundation

struct CurrentWeather {
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return "\(temperature.rounded())"
    }
    
    let feelsLikeTemperature: Double
    
    var feelsLikeTemperatureString: String {
        return "\(feelsLikeTemperature.rounded())"
    }
    
    let conditionCode: Int
    
    init?(weatherData: WeatherData) {
        cityName = weatherData.name
        temperature = weatherData.main.temp
        feelsLikeTemperature = weatherData.main.feelsLike
        conditionCode = weatherData.weather.first!.id
    }
}
