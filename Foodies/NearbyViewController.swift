//
//  NearbyViewController.swift
//  Foodies
//
//  Created by QingTian Chen on 3/28/16.
//  Copyright © 2016 QingTian Chen. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class NearbyViewController: UIViewController {

    @IBOutlet weak var nearbyMapView: MKMapView!
    var myLocations: [CLLocation] = []
    var locationManager : CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLocationManager()
        setupMap()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

// MARK: - Location

extension NearbyViewController: MKMapViewDelegate, CLLocationManagerDelegate {
    
    func setupLocationManager() {
        locationManager = CLLocationManager()
        // Ask for Authorisation from the User.
        self.locationManager.requestAlwaysAuthorization()
        // For use in foreground
        self.locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.distanceFilter = 200
        }
    }
    
    func setupMap() {
        nearbyMapView.delegate = self
        nearbyMapView.showsUserLocation = true
        nearbyMapView.mapType = MKMapType.Standard
    }
    
    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        if status == CLAuthorizationStatus.AuthorizedWhenInUse {
            locationManager.startUpdatingLocation()
            let locValue: CLLocationCoordinate2D = locationManager.location!.coordinate
            print("locations = \(locValue.latitude) \(locValue.longitude)")
            //addAnnotationAtCoordinate(locValue)
        }
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first {
            let span = MKCoordinateSpanMake(0.05, 0.05)
            let region = MKCoordinateRegionMake(location.coordinate, span)
            nearbyMapView.setRegion(region, animated: true)
        }
    }

    func goToLocation(location: CLLocation) {
        let span = MKCoordinateSpanMake(0.03, 0.03)
        let region = MKCoordinateRegionMake(location.coordinate, span)
        nearbyMapView.setRegion(region, animated: true)
    }
}


//MARK: - Add Pin

extension NearbyViewController {
    
    func addAnnotationAtCoordinate(coordinate: CLLocationCoordinate2D) {
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        annotation.title = "An annotation!"
        nearbyMapView.addAnnotation(annotation)
    }
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        let reuseID = "myAnnotationView"
        
         // custom image annotation
        var annotationView = mapView.dequeueReusableAnnotationViewWithIdentifier(reuseID)
        if (annotationView == nil) {
            annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: reuseID)
            annotationView!.canShowCallout = true
            annotationView!.leftCalloutAccessoryView = UIImageView(frame: CGRect(x:0, y:0, width: 50, height:50))
        }
        
        let imageView = annotationView?.leftCalloutAccessoryView as! UIImageView
        imageView.image = UIImage(named: "hippo")
        
        return annotationView
    }
}
