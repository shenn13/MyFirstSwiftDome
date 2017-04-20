//
//  Header.swift
//  MyFirstSwiftDome
//
//  Created by shen on 17/4/20.
//  Copyright © 2017年 shen. All rights reserved.
//

import UIKit

// 屏幕宽
public let kScreenWidth = Int(UIScreen.main.bounds.size.width)
// 屏幕高
public let kScreenHeight = Int(UIScreen.main.bounds.size.height)
// 全屏大小
public let kMainBounds = UIScreen.main.bounds
// 导航高
public let kNavHeight = 64
// Tabbar高
public let kTabHeight = 49

public let kMainScreenViewColor = UIColor.colorWith(249, green: 123, blue: 134, alpha: 1)

public let kMainViewBackgroundColor = UIColor.colorWith(246, green: 246, blue: 246, alpha: 1)


// UIColor的扩展-RGBA&HEX
extension UIColor {
    
    class func colorWith(_ red: Int, green: Int, blue: Int, alpha: CGFloat) -> UIColor {
        return UIColor(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: alpha)
}
    
}

