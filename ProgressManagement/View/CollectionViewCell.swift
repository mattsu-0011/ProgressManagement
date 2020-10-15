//
//  CollectionViewCell.swift
//  ProgressManagement
//
//  Created by 松本直也 on 2020/10/14.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    lazy var label: UILabel = {
        let label = UILabel(frame: CGRect(x: 100, y: 100, width: 0, height: 0))
        label.text = "おためし"
        label.textAlignment = .center
        label.backgroundColor = .white
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCellLayout()
                
        self.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        //redViewの横方向の中心は、親ビューの横方向の中心と同じ
        label.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        //redViewの縦方向の中心は、親ビューの縦方向の中心と同じ
        label.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        //redViewの幅は、親ビューの幅の1/2
        label.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5).isActive = true
        //redViewの親ビューの幅の1/2
        label.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.5).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


extension CollectionViewCell {
    
    func setupCellLayout() {
        
        layer.borderColor = UIColor.green.cgColor
        layer.borderWidth = 3.0
    }
}
