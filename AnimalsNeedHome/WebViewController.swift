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
    @IBOutlet weak var btn_adopt: UIButton!
    @IBOutlet weak var btn_location: UIButton!
    
    
    
    var stringArray: [String] = []
    var WEB_URL = "http://163.29.36.110/html/Aml_animalCon.aspx?Aid="
    override func viewDidLoad() {
        super.viewDidLoad()
        web_animal.delegate = self
        btn_adopt.backgroundColor = UIColor(red: 251/255, green: 86/255, blue: 7/255, alpha: 1)
        btn_location.backgroundColor = UIColor(red: 113/255, green: 168/255, blue: 192/255, alpha: 1)
        

        if let url = URL(string: WEB_URL + stringArray[0] + "&Tid=" + stringArray[1]) {
            print(url)
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
