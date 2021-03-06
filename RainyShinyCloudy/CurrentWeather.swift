//
//  CurrentWeather.swift
//  RainyShinyCloudy
//
//  Created by Luana Nalon on 07/05/2021.
//

import UIKit
import Alamofire

class CurrentWeather {
    var _cityName: String!
    var _date: String!
    var _weatherType: String!
    var _currentTemp: Double!
    var _URL: String!
    
    var cityName: String {
        if _cityName == nil {
            _cityName = ""
        }
        return _cityName
    }
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        let currrentDate = dateFormatter.string(from: Date())
        self._date = "Today, \(currrentDate)"
        return _date
    }
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    var currentTemp: Double {
        if _currentTemp == nil {
            _currentTemp = 0.0
        }
        return _currentTemp
    }
    var URL: String {
        if _URL == nil {
            _URL = ""
        }
        return _URL
    }
    
    func downloadWeatherDetails(completed: @escaping DownloadComplete) {
        //       Download Current Weather Data
        AF.request(CURRENT_WEATHER_URL).responseJSON { response in
            switch response.result {
            case let .success(value):
                
                if let dict = value as? Dictionary<String, AnyObject> {
                    
                    if let name = dict["name"] as? String {
                        self._cityName = name.capitalized
                    }
                    if let weather = dict["weather"] as? [Dictionary<String, AnyObject>] {
                        
                        if let main = weather[0]["main"] as? String {
                            self._weatherType = main.capitalized
                        }
                    }
                    if let main = dict["main"] as? Dictionary<String, AnyObject> {
                        
                        if let currentTemperature = main["temp"] as? Double {
                            let kelvinToCelsius = Double(round(currentTemperature - 273.15))
                            self._currentTemp = kelvinToCelsius
                        }
                    }
                }
                completed()
            case let .failure(error):
                print(error)
            }
            
        }
    }
}
