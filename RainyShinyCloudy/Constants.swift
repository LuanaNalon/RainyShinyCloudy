//
//  Constants.swift
//  RainyShinyCloudy
//
//  Created by Luana Nalon on 07/05/2021.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "657061082f9e08c718e57b593923a4a0"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=39.7436&lon=-8.8071&appid=657061082f9e08c718e57b593923a4a0"
let FORECAST_URL = "https://api.openweathermap.org/data/2.5/onecall?lat=39.7436&lon=-8.8071&exclude=hourly,minutely,alerts&appid=657061082f9e08c718e57b593923a4a0"
let FORECAST_URL1 = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=39.7436&lon=-8.8071&cnt=7&appid=657061082f9e08c718e57b593923a4a0"


