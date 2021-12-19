//
//  MapKitViewController.swift
//  ATMConsultoria
//
//  Created by Filipe Teodoro on 16/12/21.
//

import UIKit
import MapKit

class MapKitViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    // MARK: Properties
    var coordinator: JamiltonCoordinator?
    var locationManager = CLLocationManager()
    
    // MARK: Outlets
    @IBOutlet weak var mapView: MKMapView!
    
    // MARK: Initialization

    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        getUserLocation()
    }
    
    // MARK: Actions
    
    // MARK: Methods
    private func setupMap() {
        let latitude = -20.24184
        let longitude = -42.29489
        let deltaLatitude: CLLocationDegrees = 0.01
        let deltaLongitude: CLLocationDegrees = 0.01
        let localization = CLLocationCoordinate2DMake(latitude, longitude)
        let mapVisualizationArea = MKCoordinateSpan(latitudeDelta: deltaLatitude, longitudeDelta: deltaLongitude)
        let region = MKCoordinateRegion(center: localization, span: mapVisualizationArea)
        mapView.setRegion(region, animated: true)
        let anotation = MKPointAnnotation()
        anotation.coordinate = localization
        anotation.title = "Perto de casa"
        
        mapView.addAnnotation(anotation)
    }
    
    private func getUserLocation() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}
