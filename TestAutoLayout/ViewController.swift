//
//  ViewController.swift
//  TestAutoLayout
//
//  Created by tanson on 16/3/20.
//  Copyright © 2016年 tanson. All rights reserved.
//

import UIKit

func getRandomNumber()->Int{
    return Int((drand48()*10) % 5.0)
}

class ViewController: UITableViewController {

    
    var images = ["111.png","222.png","333.png","444.png","555.png"]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.tableView.estimatedRowHeight = 50
        self.tableView.rowHeight = UITableViewAutomaticDimension
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("FDFeedCell", forIndexPath: indexPath) as! ViewCell
        

        let maxSize = CGSize(width: 300, height: 250)
        let imgName = self.images[getRandomNumber()]
        let img = UIImage(named: imgName)
        var newSize = img!.size
        
        if img!.size.width > maxSize.width && img!.size.height > maxSize.height{
            let scalew = maxSize.width / img!.size.width
            let scaleh = maxSize.height / img!.size.height
            let scale = min(scalew, scaleh)
            newSize = CGSize(width: img!.size.width*scale, height: img!.size.height*scale)
        }
        
        cell.contentLab.text = "w:\(Int(newSize.width)) h:\(Int(newSize.height))"
        cell.imageWidthConstraint.constant = CGFloat(newSize.width)
        cell.imageHeightContraint.constant = CGFloat(newSize.height)
        cell.imgView.image = img

        return cell
    }

}

