//
//  CollectionViewController.swift
//  SBQ
//
//  Created by iOS Dev Log on 2017/6/21.
//  Copyright © 2017年 jiaxianhua. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    
    var characters: [String]!
    var letters: [String]!
    var charCount = 4
    var cellWidth: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Register cell classes
        let nib = UINib(nibName: CollectionViewCell.reuseIdentifier, bundle: nil)
        self.collectionView?.register(nib, forCellWithReuseIdentifier: CollectionViewCell.reuseIdentifier)
        
        if let layout = self.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.minimumLineSpacing = 0
            layout.minimumInteritemSpacing = 0
        }
        
        self.collectionView?.backgroundColor = UIColor.lightGray
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        cellWidth = (collectionView?.bounds.width)! / CGFloat(self.charCount)
        
        self.collectionView?.reloadData()
    }
    
    override func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        
        self.tabBarController?.tabBar.isHidden = velocity.y > 0
    }
    
    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return characters.count / charCount
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return charCount
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.reuseIdentifier, for: indexPath) as! CollectionViewCell
        
        let character = characters[indexPath.section*charCount + indexPath.row]
        let letter = letters[indexPath.section*charCount + indexPath.row]
        
        // Configure the cell
        if (cell.label != nil) {
            cell.label.text = letter + "\n" + character
        }
    
        return cell
    }
}

extension CollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: cellWidth, height: cellWidth)
    }
}
