//
//  WebViewController.swift
//  AnimalsNeedHome
//
//  Created by 韋儒朱 on 2018/7/16.
//  Copyright © 2018年 韋儒朱. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, UIWebViewDelegate {
    @IBOutlet weak var web_animal: UIWebView!
    var stringArray: [String] = []
    var WEB_URL = "http://163.29.36.110/html/Aml_animalCon.aspx?Aid="
    override func viewDidLoad() {
        super.viewDidLoad()
        web_animal.delegate = self
        
        print(stringArray[0])
        print(stringArray[1])
        
        
        if let url = URL(string: WEB_URL + stringArray[0] + "&Tid=" + stringArray[1]) {
            let request = URLRequest(url: url)
            web_animal.scalesPageToFit = true
            web_animal.contentMode = .scaleAspectFit
            web_animal.loadRequest(request)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
}
