//
//  Constants.swift
//  RainyShinyCloudy
//
//  Created by Luana Nalon on 07/05/2021.
//

import Foundation

let PREF_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat="
let PREF_FORECAST_URL = "https://api.openweathermap.org/data/2.5/onecall?lat="

let SUF_WEATHER_URL = "&appid="
let SUF_FORECAST_URL = "&exclude=hourly,minutely,alerts&appid="

let LNG = "&lon="

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=\(MY_API_KEY)"
let FORECAST_URL = "https://api.openweathermap.org/data/2.5/onecall?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&exclude=hourly,minutely,alerts&appid=\(MY_API_KEY)"
