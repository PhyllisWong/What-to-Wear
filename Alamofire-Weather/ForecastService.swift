//
//  ForecastService.swift
//  Alamofire-Weather
//
//  Created by djchai on 12/11/17.
//  Copyright © 2017 Duc Tran. All rights reserved.
//

import Foundation

class ForecastService {
    //Sample URL: https://api.darksky.net/forecast/ebf2b3b37584b7b020ca363a80cdb9b7/37.8267,-122.4233
    let forecastAPIKey : String
    let forecastBaseURL : URL?
    
    init(APIKey: String) {
        self.forecastAPIKey = APIKey
        forecastBaseURL = URL(string: "https://api.darksky.net/forecast/\(APIKey)")
    }
    
    func getCurrentWeather(latitude: Double, longitude: Double) {
        let forcastURL = URL(string: "\(forecastBaseURL)/\(latitude), \(longitude)")
    }
}






















