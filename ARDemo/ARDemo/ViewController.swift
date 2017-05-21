//
//  ViewController.swift
//  ARDemo
//
//  Created by Melissa Lynn Auclaire on 2017/05/10.
//  Copyright © 2017 StudioTriome. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set initial location in Honolulu
        //let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
        
        
        let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
        
        centerMapOnLocation(location: initialLocation)
        
        
    }
    

    let regionRadius: CLLocationDistance = 1000
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }


}

