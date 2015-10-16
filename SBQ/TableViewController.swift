//
//  TableViewController.swift
//  SBQ
//
//  Created by GnuHua on 15/3/16.
//  Copyright (c) 2015年 jiaxianhua. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var context: [String]!
    var charCount = 4
    
    override func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        
        self.tabBarController?.tabBar.hidden = velocity.y > 0
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView!.registerClass(UITableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
        self.tableView!.backgroundColor =
            UIColor(red: 1, green: 230 / 255, blue: 160 / 255, alpha: 0.5)
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return context.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return charCount
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as UITableViewCell

        // Configure the cell...
        cell.backgroundColor =
            UIColor(red: 1, green: 230 / 255, blue: 160 / 255, alpha: 0.5)
        
        let s = context[indexPath.section]
        let startIndex = s.startIndex.advancedBy(indexPath.row)
        let endIndex = s.startIndex.advancedBy(indexPath.row + 1);
        let range = Range<String.Index>(start: startIndex,end: endIndex)
        
        cell.textLabel?.textAlignment = NSTextAlignment.Center
        cell.textLabel?.font = UIFont(name: "Thonburi-Bold", size: 72)
        cell.textLabel?.text = s.substringWithRange(range)
        cell.textLabel?.backgroundColor = UIColor(patternImage: UIImage(named: "background.jpg")!)
        
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        return nil
    }
}
