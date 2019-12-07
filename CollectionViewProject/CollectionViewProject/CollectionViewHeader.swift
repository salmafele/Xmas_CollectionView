//
//  CollectionViewHeader.swift
//  CollectionViewProject
//
//  Created by Salma on 12/5/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import UIKit

class CollectionViewHeader: UICollectionReusableView {
    


    NSLayoutConstraint.activate([
        label.topAnchor.constraint(equalTo: view.topAnchor)
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        label.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        label.widthAnchor.constraint(equalTo: self.frame.size.width, constant: 100)
    ])
    
    func viewDidLoad() {
        viewDidLoad()
    }
}
