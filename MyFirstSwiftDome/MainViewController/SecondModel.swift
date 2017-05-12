//
//  SecondModel.swift
//  MyFirstSwiftDome
//
//  Created by shen on 2017/5/11.
//  Copyright © 2017年 shen. All rights reserved.
//

import UIKit

class SecondModel: NSObject {
    
    var type: String?
    
    var dataModel: DataModel?
    
    init(dict: [String: AnyObject]) {
        
        type = dict["type"] as? String
        
        dataModel = DataModel(target: dict["data"] as! [String : AnyObject])
        
    }
    
    struct DataModel {
        
        var description: String?
        var url: String?
        var purchase_url: String?
        var is_favorite: String?
        var name: String?
        var purchase_status: Int?
        var favorites_count: Int?
        var cover_image_url: String?
        var price: String?
        
        
        init(target: [String: AnyObject]) {
            
            description = target["description"] as? String
            url = target["url"] as? String
            purchase_url = target["purchase_url"] as? String
            is_favorite = target["is_favorite"] as? String
            name = target["name"] as? String
            purchase_status = target["purchase_status"] as? Int
            favorites_count = target["favorites_count"] as? Int
            cover_image_url = target["cover_image_url"] as? String
            price = target["price"] as? String
            
            
        }
    }
}
