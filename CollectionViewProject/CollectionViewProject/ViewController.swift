//
//  ViewController.swift
//  CollectionViewProject
//
//  Created by Salma on 12/3/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import UIKit

struct CustomData {
    var title: String
    var image: UIImage
    var url: String
}

struct bannerHeader {
    let header_title = "header_title"
    var headerTitle: String
}

class ViewController: UIViewController {
    
    var header = "Christmas"
            
    var data = [
        CustomData(title: "xmasbus", image: #imageLiteral(resourceName: "6"), url: "www.google.com"),
        CustomData(title: "redgift", image: #imageLiteral(resourceName: "4"), url: "www.google.com"),
        CustomData(title: "wreath", image: #imageLiteral(resourceName: "1"), url: "www.google.com"),
        CustomData(title: "littlecar", image: #imageLiteral(resourceName: "2"), url: "www.google.com"),
        CustomData(title: "presents", image: #imageLiteral(resourceName: "8"), url: "www.google.com"),
        CustomData(title: "cookies", image: #imageLiteral(resourceName: "0"), url: "www.google.com"),
        CustomData(title: "white", image: #imageLiteral(resourceName: "7"), url: "www.google.com"),
        CustomData(title: "stocking", image: #imageLiteral(resourceName: "5"), url: "www.google.com"),
        CustomData(title: "stocking2", image: #imageLiteral(resourceName: "5"), url: "www.google.com"),
        CustomData(title: "xmasbus", image: #imageLiteral(resourceName: "6"), url: "www.google.com"),
        CustomData(title: "redgift", image: #imageLiteral(resourceName: "4"), url: "www.google.com"),
        CustomData(title: "wreath", image: #imageLiteral(resourceName: "1"), url: "www.google.com"),
        CustomData(title: "littlecar", image: #imageLiteral(resourceName: "2"), url: "www.google.com"),
        CustomData(title: "presents", image: #imageLiteral(resourceName: "8"), url: "www.google.com"),
        CustomData(title: "cookies", image: #imageLiteral(resourceName: "0"), url: "www.google.com"),
        CustomData(title: "white", image: #imageLiteral(resourceName: "7"), url: "www.google.com"),
        CustomData(title: "stocking", image: #imageLiteral(resourceName: "5"), url: "www.google.com"),
        CustomData(title: "xmasbus", image: #imageLiteral(resourceName: "6"), url: "www.google.com"),
        CustomData(title: "redgift", image: #imageLiteral(resourceName: "4"), url: "www.google.com"),
        CustomData(title: "wreath", image: #imageLiteral(resourceName: "1"), url: "www.google.com"),
        CustomData(title: "littlecar", image: #imageLiteral(resourceName: "2"), url: "www.google.com"),
        CustomData(title: "presents", image: #imageLiteral(resourceName: "8"), url: "www.google.com"),
        CustomData(title: "cookies", image: #imageLiteral(resourceName: "0"), url: "www.google.com"),
        CustomData(title: "white", image: #imageLiteral(resourceName: "7"), url: "www.google.com"),
        CustomData(title: "stocking", image: #imageLiteral(resourceName: "5"), url: "www.google.com"),
        CustomData(title: "stocking2", image: #imageLiteral(resourceName: "5"), url: "www.google.com"),
        CustomData(title: "xmasbus", image: #imageLiteral(resourceName: "6"), url: "www.google.com"),
        CustomData(title: "redgift", image: #imageLiteral(resourceName: "4"), url: "www.google.com"),
        CustomData(title: "wreath", image: #imageLiteral(resourceName: "1"), url: "www.google.com"),
        CustomData(title: "littlecar", image: #imageLiteral(resourceName: "2"), url: "www.google.com"),
        CustomData(title: "presents", image: #imageLiteral(resourceName: "8"), url: "www.google.com"),
        CustomData(title: "cookies", image: #imageLiteral(resourceName: "0"), url: "www.google.com"),
        CustomData(title: "white", image: #imageLiteral(resourceName: "7"), url: "www.google.com"),
        CustomData(title: "stocking", image: #imageLiteral(resourceName: "5"), url: "www.google.com")
    ]
    
       
    fileprivate let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionV = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionV.translatesAutoresizingMaskIntoConstraints = false
        collectionV.register(CustomCell.self, forCellWithReuseIdentifier: "cell")
        return collectionV
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        view.addSubview(collectionView)
        collectionView.backgroundColor = UIColor(named: "xmas")
                
        //constrain the collectionView
        collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10).isActive = true
        
        collectionView.heightAnchor.constraint(equalTo: collectionView.widthAnchor, multiplier: 0.5).isActive = true
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, layout
        collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection
        section: Int) -> CGSize {
        return CGSize(width: 100, height: view.frame.height)
    }
      
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/5, height: collectionView.frame.width/3)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CustomCell
        cell?.data = self.data[indexPath.row] // trying to make my data array to show as the boxes in collection View
        cell?.backgroundColor = UIColor(named: "green")
        cell?.layer.cornerRadius = 10
        return cell ?? UICollectionViewCell()
    }

    
    // MARK: Collection View Cells with the pictures
    
class CustomCell: UICollectionViewCell {
    
    var data: CustomData? {
        didSet {
            guard let data = data else { return }
            bg.image = data.image
        }
    }
    
    fileprivate let bg: UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "7")
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 10
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(bg)
        bg.layer.cornerRadius = 10
        bg.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        bg.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        bg.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        bg.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

    // MARK: Header
    
    class header: UICollectionViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 0
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableSupplementaryView(ofKind: "cell", withReuseIdentifier: "header_title", for: indexPath)
            return cell as! UICollectionViewCell
        }
        
class HeaderTop: UICollectionViewCell {
            
    var header: bannerHeader? {
        didSet {
            guard header != nil else { return }
        }
    }
    
    fileprivate let head: UILabel = {
        let banner = UILabel()
        banner.translatesAutoresizingMaskIntoConstraints = false
        banner.layer.cornerRadius = 10
        banner.backgroundColor = UIColor(named: "green")
        banner.textAlignment = .center
        banner.textColor = UIColor(named: "xmas")
        banner.text = "Christmas"
        return banner
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(head)
        head.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        head.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        head.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        head.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
                
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
}
}
