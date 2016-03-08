//
//  HCTableViewCell.swift
//  自定义cell
//
//  Created by suhc on 16/3/8.
//  Copyright © 2016年 kongjianjia. All rights reserved.
//

import UIKit

class HCTableViewCell: UITableViewCell {
    private var newModel:HCModel!
    
    /// 数据模型
    var model:HCModel?{
//        didSet{
//            textLabel?.text = model!.name
//            detailTextLabel?.text = NSString(format: "%@", model!.age!) as String
//        }
        set{
            self.newModel = newValue
            textLabel?.text = newValue!.name
            detailTextLabel?.text = NSString(format: "%@", newValue!.age!) as String
        }
        get{
            return self.newModel
        }
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .Value1, reuseIdentifier: reuseIdentifier)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
