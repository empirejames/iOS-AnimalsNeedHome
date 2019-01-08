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
        
        
        btn_young.imageView?.contentMode = .scaleAspectFill
        btn_strong.imageView?.contentMode = .scaleAspectFill
        btn_old.imageView?.contentMode = .scaleAspectFill
        btn_wisdom.imageView?.contentMode = .scaleAspectFill
        
        let youngTitle = UILabel(frame: CGRect(x:0,y:0,width:200,height:50))
        youngTitle.text = "初生之犢"
        youngTitle.font =  youngTitle.font.withSize(40)
        youngTitle.textColor = UIColor.white
        youngTitle.textAlignment = NSTextAlignment.left
        btn_young.addSubview(youngTitle)
        
        let youngDescription = UILabel(frame: CGRect(x:5,y:35,width:200,height:50))
        youngDescription.text = "3個月齡以下"
        youngDescription.font =  youngDescription.font.withSize(15)
        youngDescription.textColor = UIColor.white
        youngDescription.textAlignment = NSTextAlignment.left
        btn_young.addSubview(youngDescription)
        
        
        let strongTitle = UILabel(frame: CGRect(x:0,y:0,width:200,height:50))
        strongTitle.text = "年輕力壯"
        strongTitle.font =  strongTitle.font.withSize(40)
        strongTitle.textColor = UIColor.white
        strongTitle.textAlignment = NSTextAlignment.left
        btn_strong.addSubview(strongTitle)
        
        let strongDescription = UILabel(frame: CGRect(x:5,y:35,width:200,height:50))
        strongDescription.text = "3個月齡至1年"
        strongDescription.font =  strongDescription.font.withSize(15)
        strongDescription.textColor = UIColor.white
        strongDescription.textAlignment = NSTextAlignment.left
        btn_strong.addSubview(strongDescription)
        
        let mainTitle = UILabel(frame: CGRect(x:0,y:0,width:200,height:50))
        mainTitle.text = "成熟穩重"
        mainTitle.font =  mainTitle.font.withSize(40)
        mainTitle.textColor = UIColor.white
        mainTitle.textAlignment = NSTextAlignment.left
        btn_old.addSubview(mainTitle)
        
        let mainDescription = UILabel(frame: CGRect(x:5,y:35,width:200,height:50))
        mainDescription.text = "1至7歲"
        mainDescription.font =  mainDescription.font.withSize(15)
        mainDescription.textColor = UIColor.white
        mainDescription.textAlignment = NSTextAlignment.left
        btn_old.addSubview(mainDescription)
       
        
        let oldTitle = UILabel(frame: CGRect(x:0,y:0,width:200,height:50))
        oldTitle.text = "老邁智者"
        oldTitle.font =  oldTitle.font.withSize(40)
        oldTitle.textColor = UIColor.white
        oldTitle.textAlignment = NSTextAlignment.left
        btn_wisdom.addSubview(oldTitle)
        
        let oldDescription = UILabel(frame: CGRect(x:5,y:35,width:200,height:50))
        oldDescription.text = "7歲以上"
        oldDescription.font =  oldDescription.font.withSize(15)
        oldDescription.textColor = UIColor.white
        oldDescription.textAlignment = NSTextAlignment.left
        btn_wisdom.addSubview(oldDescription)
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
