//
//  CurrentWeatherViewController.swift
//  Alamofire-Weather
//
//  Created by djchai on 12/11/17.
//  Copyright © 2017 Duc Tran. All rights reserved.
//

import UIKit
import Alamofire

class CurrentWeatherViewController: UIViewController {

    @IBOutlet weak var cityTextLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var tempScaleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    let forecastAPIKey = "ebf2b3b37584b7b020ca363a80cdb9b7"
    let coordinate: (lat: Double, long: Double) = (37.804364,-122.271114)
    var forecastService: ForecastService!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        forecastService = ForecastService(APIKey: forecastAPIKey)
        forecastService.getCurrentWeather(latitude: coordinate.lat, longitude: coordinate.long) { (currentWeather) in
            if let currentWeather = currentWeather {
                DispatchQueue.main.async {
                    if let temperature = currentWeather.temperature {
                        self.temperatureLabel.text = "\(temperature)"
                    } else {
                        self.temperatureLabel.text = "-"
                    }
                }
            }
        }
    }

   
}
