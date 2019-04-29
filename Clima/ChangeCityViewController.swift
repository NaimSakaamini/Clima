//
//  ChangeCityViewController.swift
//  WeatherApp
//
//  Created by Naim Sakaamini on 24/04/2019.
//

import UIKit


//protocol to pass data betrween views
protocol ChangeCityDelegate{
    func userEnteredANewCityName (city : String)
}


class ChangeCityViewController: UIViewController {
    
    var delegate : ChangeCityDelegate?
    
    @IBOutlet weak var changeCityTextField: UITextField!

    //gets the weather thru a city name
    @IBAction func getWeatherPressed(_ sender: AnyObject) {
        
        let cityName = changeCityTextField.text!
        
        delegate?.userEnteredANewCityName(city: cityName)
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    //go back to the main view
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
