//
//  HCModel.swift
//  自定义cell
//
//  Created by suhc on 16/3/8.
//  Copyright © 2016年 kongjianjia. All rights reserved.
//

import UIKit

class HCModel: NSObject {
    var name:String?
    var age:NSNumber?
    
    init(dic:[String:AnyObject]){
        super.init()
        setValuesForKeysWithDictionary(dic)
    }
}
