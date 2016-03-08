//
//  ViewController.swift
//  自定义cell
//
//  Created by suhc on 16/3/8.
//  Copyright © 2016年 kongjianjia. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
        
        tableView.registerClass(HCTableViewCell.self, forCellReuseIdentifier: "cell_reuseIdentifier")
    }
    
    //MARK: - 懒加载
    private lazy var dataList:NSArray = {
        let path = NSBundle.mainBundle().pathForResource("datalist.plist", ofType: nil)
        let array = NSArray(contentsOfFile: path!)
        let tempArray = NSMutableArray(capacity: (array?.count)!)
        for dic in array as! [[String:AnyObject]]{
            let model = HCModel(dic: dic)
            tempArray.addObject(model)
        }
        return tempArray
    }()

}

extension ViewController{
    //MARK: - UITableViewDataSource
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell_reuseIdentifier") as! HCTableViewCell
        
        cell.model = dataList[indexPath.row] as? HCModel
        
        return cell
    }
    
    //MARK: - UITableViewDelegate
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 44
    }
    
}
