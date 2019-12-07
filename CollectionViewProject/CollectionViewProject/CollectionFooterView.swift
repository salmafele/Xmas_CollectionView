//
//  CollectionHeaderView.swift
//  CollectionViewProject
//
//  Created by Salma on 12/5/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import UIKit

class CollectionHeaderView: UICollectionView {
    var myFooterView = "myFooterView"
    
    fileprivate let collectionFooterView: UICollectionView = {
        let layout = UICollectionReusableView()
        
        let footer = UICollectionFooterView(frame: .zero, collectionFooterView: layout)
        footer.translateAutoresizingMaskIntoConstraints = false
    }
}

extension ViewController: UICollectionReusableView, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var collectionFooterView = UICollectionView = {
        layout = UICollectionReusableView()
        let footer = UICollectionFooterView()
        footer.tra
    }
    
    optional func collectionView(_ collectionView: UICollectionView,
            layout collectionViewLayout: UICollectionViewLayout,
    referenceSizeForFooterInSection section: Int) -> CGSize
}
