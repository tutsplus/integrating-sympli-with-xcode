//
//  TableViewController.swift
//  Sympli In Xcode
//
//  Created by Davis Allie on 2/08/16.
//  Copyright © 2016 tutsplus. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    class Item {
        var title: String
        var subtitle: String?
        var icon: UIImage?
        
        var frontPrievewColor: UIColor
        var middlePreviewColor: UIColor
        var backPreviewColor: UIColor
        
        init(title: String, subtitle: String?, icon: UIImage?, frontColor: UIColor, middleColor: UIColor, backColor: UIColor) {
            self.title = title
            self.subtitle = subtitle
            self.icon = icon
            self.frontPrievewColor = frontColor
            self.middlePreviewColor = middleColor
            self.backPreviewColor = backColor
        }
    }
    
    let items = [
        Item(title: "Moments", subtitle: nil, icon: nil, frontColor: UIColor(red: 90/255.0, green: 200/255.0, blue: 251/255.0, alpha: 1.0), middleColor: UIColor(red: 52/255.0, green: 169/255.0, blue: 220/255.0, alpha: 1.0), backColor: UIColor(red: 0/255.0, green: 124/255.0, blue: 253/255.0, alpha: 1.0)),
        Item(title: "Camera Roll", subtitle: "144", icon: nil, frontColor: UIColor(red: 73/255.0, green: 216/255.0, blue: 100/255.0, alpha: 1.0), middleColor: UIColor(red: 90/255.0, green: 200/255.0, blue: 251/255.0, alpha: 1.0), backColor: UIColor(red: 52/255.0, green: 169/255.0, blue: 220/255.0, alpha: 1.0)),
        Item(title: "My Photo Stream", subtitle: "176", icon: nil, frontColor: UIColor(red: 255/255.0, green: 204/255.0, blue: 1/255.0, alpha: 1.0), middleColor: UIColor(red: 73/255.0, green: 216/255.0, blue: 100/255.0, alpha: 1.0), backColor: UIColor(red: 90/255.0, green: 200/255.0, blue: 251/255.0, alpha: 1.0)),
        Item(title: "Videos", subtitle: "10", icon: UIImage(named: "video icon"), frontColor: UIColor(red: 255/255.0, green: 149/255.0, blue: 2/255.0, alpha: 1.0), middleColor: UIColor(red: 255/255.0, green: 204/255.0, blue: 1/255.0, alpha: 1.0), backColor: UIColor(red: 73/255.0, green: 216/255.0, blue: 100/255.0, alpha: 1.0)),
        Item(title: "Screenshots", subtitle: "106", icon: UIImage(named: "iphone icon"), frontColor: UIColor(red: 255/255.0, green: 59/255.0, blue: 48/255.0, alpha: 1.0), middleColor: UIColor(red: 255/255.0, green: 149/255.0, blue: 2/255.0, alpha: 1.0), backColor: UIColor(red: 255/255.0, green: 204/255.0, blue: 1/255.0, alpha: 1.0))
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! TableViewCell
        let item = items[indexPath.row]

        cell.itemTitle.text = item.title
        cell.itemSubtitle.text = item.subtitle
        
        cell.frontPreview.backgroundColor = item.frontPrievewColor
        cell.middlePreview.backgroundColor = item.middlePreviewColor
        cell.backPreview.backgroundColor = item.backPreviewColor
        cell.iconView.image = item.icon

        return cell
    }
}
