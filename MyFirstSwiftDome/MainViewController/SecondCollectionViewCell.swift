//
//  SecondCollectionViewCell.swift
//  MyFirstSwiftDome
//
//  Created by shen on 2017/5/11.
//  Copyright © 2017年 shen. All rights reserved.
//

import UIKit
import Kingfisher

class SecondCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLab: UILabel!
    @IBOutlet weak var priceLab: UILabel!
    @IBOutlet weak var likeLab: UIButton!
    
  
    var model: SecondModel? {
        
        didSet {
            
            titleLab.text = model?.dataModel?.name
            
            imageView.kf.setImage(with: URL(string: (model?.dataModel?.cover_image_url)!))
            
            likeLab.setTitle(String(describing: model!.dataModel!.favorites_count!), for: .normal)
            priceLab.text = "￥" + model!.dataModel!.price!
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
