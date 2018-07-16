//
//  AnimalData.swift
//  AnimalsNeedHome
//
//  Created by 韋儒朱 on 2018/7/13.
//  Copyright © 2018年 韋儒朱. All rights reserved.
//

import Foundation

struct AnimalData:Codable {
    var tid: Int
    var pic: String?
    var acceptnum: String?
    var id: Int
    var name: String?
}

struct StrayAnimals: Codable{
    var animals: [AnimalData]
}
