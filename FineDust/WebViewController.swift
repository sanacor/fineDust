//
//  WebViewController.swift
//  FineDust
//
//  Created by dosoon on 2020/12/15.
//
import UIKit
import Foundation
import WebKit

class WebViewController: UIViewController {
    
    @IBOutlet weak var WebViewMain: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let urlString = "http://ec2-13-124-226-51.ap-northeast-2.compute.amazonaws.com:8080/app/map"
//        let urlString =  "https://www.daum.net"
        if let url = URL(string: urlString) {
            let urlReq = URLRequest(url: url)
            WebViewMain.load(urlReq)
        }
    }

    
}
