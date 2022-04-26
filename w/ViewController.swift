//
//  ViewController.swift
//  w
//
//  Created by Гость on 26.04.2022.
//

import UIKit
import CoreLocation


class ViewController: UIViewController {

    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    
        startLocationManager()
    }

    func startLocationManager() {
        locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
            locationManager.pausesLocationUpdatesAutomatically = false
            locationManager.startUpdatingLocation()
    }
    
  }

    
}

extension   ViewController: CLLocationManagerDelegate {
    func locationManager(_manager: CLLocationManager, didUpdateLocation locations: [CLLocation]) {
    if let lastLocation = locations.last {
        print(lastLocation.coordinate .latitude,lastLocation.coordinate.longitude)
        
        
    }

   }
}
