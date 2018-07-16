//
//  ViewController.swift
//  AnimalsNeedHome
//
//  Created by 韋儒朱 on 2018/7/13.
//  Copyright © 2018年 韋儒朱. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var btn_dog: UIButton!
    @IBOutlet weak var btn_cat: UIButton!
    @IBOutlet weak var btn_other: UIButton!
    @IBAction func tab_dog(_ sender: Any) {
         //self.performSegue(withIdentifier: "Dog", sender: self)
    }
    @IBAction func tab_cat(_ sender: Any) {
        //self.performSegue(withIdentifier: "Cat", sender: self)
    }
    @IBAction func tab_other(_ sender: Any) {
        //self.performSegue(withIdentifier: "Other", sender: self)
    }
    
    var arrayList = Animals(type: "1",sex: "2",year: "3")
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let dogTitle = UILabel(frame: CGRect(x:0,y:0,width:200,height:50))
        dogTitle.text = "找狗狗"
        dogTitle.font =  dogTitle.font.withSize(40)
        dogTitle.textColor = UIColor.white
        dogTitle.textAlignment = NSTextAlignment.left
        btn_dog.addSubview(dogTitle)
        
        
        let catTitle = UILabel(frame: CGRect(x:0,y:0,width:200,height:50))
        catTitle.text = "找貓貓"
        catTitle.font =  catTitle.font.withSize(40)
        catTitle.textColor = UIColor.white
        catTitle.textAlignment = NSTextAlignment.left
        btn_cat.addSubview(catTitle)
        
        let otherTitle = UILabel(frame: CGRect(x:0,y:0,width:200,height:50))
        otherTitle.text = "找兔子"
        otherTitle.font =  otherTitle.font.withSize(40)
        otherTitle.textColor = UIColor.white
        otherTitle.textAlignment = NSTextAlignment.left
        btn_other.addSubview(otherTitle)
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Dog" {
            print("print Dog")
            if let controller = segue.destination as? GenderViewController {
                controller.arrayList = Animals(type: "1",sex: "",year: "")
            }
        }else if segue.identifier == "Cat" {
                print("print Cat")
            if let controller = segue.destination as? GenderViewController {
                controller.arrayList = Animals(type: "2",sex: "",year: "")
            }
        }else if segue.identifier == "Other" {
                print("print Other")
            if let controller = segue.destination as? GenderViewController {
                controller.arrayList = Animals(type: "3",sex: "",year: "")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

