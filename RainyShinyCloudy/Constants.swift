//
//  Constants.swift
//  RainyShinyCloudy
//
//  Created by Luana Nalon on 07/05/2021.
//

import Foundation
let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat=39.7436"
let LONGITUDE = "&lon=-8.8071"
let APP_ID = "&appid="
let API_KEY = "657061082f9e08c718e57b593923a4a0"
let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)\(LONGITUDE)\(APP_ID)\(API_KEY)"

typealias DownloadComplete = () -> ()


