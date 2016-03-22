//
//  ViewCell.swift
//  TestAutoLayout
//
//  Created by tanson on 16/3/21.
//  Copyright © 2016年 tanson. All rights reserved.
//

import UIKit

class ViewCell: UITableViewCell {

    @IBOutlet var imgView:UIImageView!
    
    @IBOutlet weak var contentLab: UILabel!
    
    @IBOutlet weak var imageHeightContraint: NSLayoutConstraint!
    @IBOutlet weak var imageWidthConstraint: NSLayoutConstraint!
}
