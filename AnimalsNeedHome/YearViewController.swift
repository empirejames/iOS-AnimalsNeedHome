//
//  YearViewController.swift
//  AnimalsNeedHome
//
//  Created by 韋儒朱 on 2018/7/13.
//  Copyright © 2018年 韋儒朱. All rights reserved.
//

import UIKit

class YearViewController: UIViewController {
    @IBOutlet weak var btn_young: UIButton!
    @IBOutlet weak var btn_strong: UIButton!
    @IBOutlet weak var btn_old: UIButton!
    @IBOutlet weak var btn_wisdom: UIButton!
    var arrayList = Animals()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let youngTitle = UILabel(frame: CGRect(x:0,y:0,width:200,height:50))
        youngTitle.text = "初生之犢"
        youngTitle.font =  youngTitle.font.withSize(40)
        youngTitle.textColor = UIColor.white
        youngTitle.textAlignment = NSTextAlignment.left
        btn_young.addSubview(youngTitle)
        
        
        let strongTitle = UILabel(frame: CGRect(x:0,y:0,width:200,height:50))
        strongTitle.text = "年輕力壯"
        strongTitle.font =  strongTitle.font.withSize(40)
        strongTitle.textColor = UIColor.white
        strongTitle.textAlignment = NSTextAlignment.left
        btn_strong.addSubview(strongTitle)
       
        
        let mainTitle = UILabel(frame: CGRect(x:0,y:0,width:200,height:50))
        mainTitle.text = "成熟穩重"
        mainTitle.font =  mainTitle.font.withSize(40)
        mainTitle.textColor = UIColor.white
        mainTitle.textAlignment = NSTextAlignment.left
        btn_old.addSubview(mainTitle)
       
        
        let oldTitle = UILabel(frame: CGRect(x:0,y:0,width:200,height:50))
        oldTitle.text = "老邁智者"
        oldTitle.font =  oldTitle.font.withSize(40)
        oldTitle.textColor = UIColor.white
        oldTitle.textAlignment = NSTextAlignment.left
        btn_wisdom.addSubview(oldTitle)
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Young" {
            if let controller = segue.destination as? AnimalsTableViewController {
                controller.arrayList = Animals(type: arrayList.type,sex: arrayList.sex,year: "20")
            }
        }else if segue.identifier == "Strong" {
            if let controller = segue.destination as? AnimalsTableViewController {
                controller.arrayList = Animals(type: arrayList.type,sex: arrayList.sex,year: "21")
            }
        }else if segue.identifier == "Old" {
            if let controller = segue.destination as? AnimalsTableViewController {
                controller.arrayList = Animals(type: arrayList.type,sex: arrayList.sex,year: "22")
            }
        }else if segue.identifier == "Wisdom" {
            if let controller = segue.destination as? AnimalsTableViewController {
                controller.arrayList = Animals(type: arrayList.type,sex: arrayList.sex,year: "23")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}