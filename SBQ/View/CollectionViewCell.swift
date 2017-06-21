//
//  CollectionViewCell.swift
//  SBQ
//
//  Created by iOS Dev Log on 2017/6/21.
//  Copyright © 2017年 jiaxianhua. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    static let reuseIdentifier = String(describing: CollectionViewCell.self)
    
    @IBOutlet weak var label: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
