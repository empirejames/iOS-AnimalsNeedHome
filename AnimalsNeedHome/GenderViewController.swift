//
//  GenderViewController.swift
//  AnimalsNeedHome
//
//  Created by 韋儒朱 on 2018/7/13.
//  Copyright © 2018年 韋儒朱. All rights reserved.
//

import UIKit

class GenderViewController: UIViewController {
    @IBOutlet weak var btn_man: UIButton!
    @IBOutlet weak var btn_woman: UIButton!
    @IBOutlet weak var btn_mix: UIButton!
    var arrayList = Animals()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(arrayList.type)
        
        btn_man.imageView?.contentMode = .scaleAspectFit
        btn_woman.imageView?.contentMode = .scaleAspectFit
        btn_mix.imageView?.contentMode = .scaleAspectFit
        
        btn_man.backgroundColor = UIColor(red: 169/255, green: 222/255, blue: 249/255, alpha: 1)
        btn_woman.backgroundColor = UIColor(red: 255/255, green: 202/255, blue: 212/255, alpha: 1)
        btn_mix.backgroundColor = UIColor(red: 194/255, green: 194/255, blue: 194/255, alpha: 1)
        
        let manTitle = UILabel(frame: CGRect(x:0,y:0,width:200,height:50))
        manTitle.text = "找男生"
        manTitle.font =  manTitle.font.withSize(40)
        manTitle.textColor = UIColor.white
        manTitle.textAlignment = NSTextAlignment.left
        btn_man.addSubview(manTitle)
        
        let womanTitle = UILabel(frame: CGRect(x:0,y:0,width:200,height:50))
        womanTitle.text = "找女生"
        womanTitle.font =  womanTitle.font.withSize(40)
        womanTitle.textColor = UIColor.white
        womanTitle.textAlignment = NSTextAlignment.left
        btn_woman.addSubview(womanTitle)
        
        let mixTitle = UILabel(frame: CGRect(x:0,y:0,width:200,height:50))
        mixTitle.text = "不分性別"
        mixTitle.font =  mixTitle.font.withSize(40)
        mixTitle.textColor = UIColor.white
        mixTitle.textAlignment = NSTextAlignment.left
        btn_mix.addSubview(mixTitle)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Man" {
            if let controller = segue.destination as? YearViewController {
                controller.arrayList = Animals(type: arrayList.type,sex: "1",year: "")
            }
        }else if segue.identifier == "Woman" {
            if let controller = segue.destination as? YearViewController {
                controller.arrayList = Animals(type: arrayList.type,sex: "2",year: "")
            }
        }else if segue.identifier == "Mix" {
            if let controller = segue.destination as? YearViewController {
                controller.arrayList = Animals(type: arrayList.type,sex: "3",year: "")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
