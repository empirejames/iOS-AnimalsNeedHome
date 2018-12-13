//
//  MapViewController.swift
//  AnimalsNeedHome
//
//  Created by 韋儒朱 on 2018/7/16.
//  Copyright © 2018年 韋儒朱. All rights reserved.
//

import UIKit
import MapKit


class MapViewController: UIViewController, MKMapViewDelegate{
    @IBOutlet weak var mainMapview: MKMapView!
    var stringArray: [String] = []
    var latitude:Double = 0.0
    var longitude:Double = 0.0
    var location:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainMapview.delegate = self
        
        if(stringArray[0] == "3"){
            latitude = 25.084820
            longitude = 121.560433
            location = "愛兔協會"
        }else{
            latitude = 25.0631109
            longitude = 121.6067468
            location = "台北市動物之家"
        }
        
        let sourceLocation = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
      
        let sourcePlacemark = MKPlacemark(coordinate: sourceLocation, addressDictionary: nil)
        
        let sourceMapItem = MKMapItem(placemark: sourcePlacemark)
        
        let sourceAnnotation = MKPointAnnotation()
        sourceAnnotation.title = location
        

        
        
        if let location = sourcePlacemark.location {
            sourceAnnotation.coordinate = location.coordinate
            self.mainMapview.addAnnotation(sourceAnnotation)
        }
      
        self.mainMapview.showAnnotations([sourceAnnotation], animated: true )
        self.mainMapview.showsCompass = true
        self.mainMapview.showsScale = true
        self.mainMapview.showsTraffic = true
        
        let directionRequest = MKDirectionsRequest()
        directionRequest.source = sourceMapItem

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
