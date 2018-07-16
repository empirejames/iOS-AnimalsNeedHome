//
//  WebViewController.swift
//  AnimalsNeedHome
//
//  Created by 韋儒朱 on 2018/7/16.
//  Copyright © 2018年 韋儒朱. All rights reserved.
//

import UIKit
import WebKit
import MessageUI

class WebViewController: UIViewController, UIWebViewDelegate , MFMailComposeViewControllerDelegate{
    @IBOutlet weak var web_animal: UIWebView!
    @IBOutlet weak var btn_adopt: UIButton!
    @IBOutlet weak var btn_location: UIButton!

    @IBAction func sendEmail(_ sender: Any) {
        let composeVC = MFMailComposeViewController()
        composeVC.mailComposeDelegate = self
        composeVC.setToRecipients(["tcapoa8@mail.taipei.gov.tw"])
        composeVC.setSubject("我想要認養( \(stringArray[2]) \(stringArray[3]) )")
        composeVC.setMessageBody("您的真實姓名:\n連絡電話:\n常用Email:\n我想認養:\n認養原因:\n居住城市:\n我的家庭成員:\n家中是否有其他寵物:\n請簡單自我介紹:\n" , isHTML: false)
        
        // Present the view controller modally.
        self.present(composeVC, animated: true, completion: nil)
        
    }
    
    @IBAction func findAnimals(_ sender: Any) {
        print("findAnimals")
    }
    
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
    func showSendMailErrorAlert() {
        let sendMailErrorAlert = UIAlertView(title: "郵件無法送出", message: "您的裝置無法送出 E-mail.  請檢查您的 E-mail 設定值後再重試一遍.", delegate: self, cancelButtonTitle: "OK")
        sendMailErrorAlert.show()
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controller = segue.destination as? MapViewController {
            controller.stringArray.append(stringArray[4])
        }
    }
    
    
}
