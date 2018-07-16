//
//  AnimalsTableViewController.swift
//  AnimalsNeedHome
//
//  Created by 韋儒朱 on 2018/7/13.
//  Copyright © 2018年 韋儒朱. All rights reserved.
//

import UIKit
import Alamofire

class AnimalsTableViewController: UITableViewController {
    var arrayList = Animals()
    var animals_URL = "http://163.29.36.110/amlapp/Query/AcceptList.ashx?type="
    var recentAnimal = [AnimalData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //print(arrayList.sex+arrayList.type+arrayList.year)
        let type = arrayList.type as String
        let sex = arrayList.sex as String
        let year = arrayList.year as String
        let url = URL(string: animals_URL+type+"&sex="+sex+"&age="+year)
        let task = URLSession.shared.dataTask(with: url!) { data, response, error in
            
            let decoder = JSONDecoder()
            if let data = data, let datalist = try? decoder.decode([AnimalData].self, from:data) {
                
                self.updateUI(recentAnimals: datalist)
                                for result in datalist{
                                    //print(result.id)
                                }
            }else{
            }
        }.resume()
    }
    
    func updateUI(recentAnimals: [AnimalData]){
        DispatchQueue.main.async {
            self.recentAnimal = recentAnimals
            self.tableView.reloadData()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0;//Choose your custom row height
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return recentAnimal.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var pic_URL = "http://163.29.36.110/uploads/images/medium/"
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! AnimalsTableViewCell
        let animal = recentAnimal[indexPath.row]
        var topicName:String! = animal.name
        var img_url:String! = animal.pic
        
        if (topicName.isEmpty) {
            cell.animals_name.text = "無名"
        }else{
            cell.animals_name.text = topicName
        }
        if(img_url.isEmpty){
            cell.img_animals.image = UIImage(named: "no_image_text")
            
        }else{
            Alamofire.request(pic_URL+img_url).response { response in
                if let data = response.data {
                    let image = UIImage(data: data)
                    cell.img_animals.image = image
                } else {
                    print("Data is nil. I don't know what to do :(")
                }
            }
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let animals = recentAnimal[indexPath.row]
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let WebViewController = storyBoard.instantiateViewController(withIdentifier: "animalResult") as! WebViewController
        WebViewController.stringArray.append(String(animals.id))
        WebViewController.stringArray.append(String(animals.tid))
        WebViewController.stringArray.append(animals.name as! String)
        WebViewController.stringArray.append(animals.acceptnum as! String)
        WebViewController.stringArray.append(arrayList.type)
        self.show(WebViewController, sender: "Web")
    }

}
