//
//  ViewController.swift
//  FineDust
//
//  Created by dosoon on 2020/11/25.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    let locationManager = CLLocationManager()


    @IBOutlet weak var imageT: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Start ViewController")
//         Do any additional setup after loading the view.
        
        print("Requst Location Info")
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()

        
        print("Start animatedImages")
        imageT.animationImages = animatedImages(for: "clear/tree")
        imageT.animationDuration = 0.9
        imageT.animationRepeatCount = 10
        imageT.image = imageT.animationImages?.first
        imageT.startAnimating()
        
        
    }
    
    func animatedImages(for name: String) -> [UIImage] {
        
        var i = 1
        var images = [UIImage]()
        
        
        while let image = UIImage(named: "\(name)\(i)") {
            images.append(image)
            print("\(name)\(i)")
            i += 1
        }
        return images
    }

}

