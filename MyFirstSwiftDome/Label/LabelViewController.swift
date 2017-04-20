//
//  LabelViewController.swift
//  MyFirstSwiftDome
//
//  Created by shen on 17/4/20.
//  Copyright © 2017年 shen. All rights reserved.
//

import UIKit

class LabelViewController: BaseViewController {
    
    var titleText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationItem.title = titleText
        
        
        let label = UILabel(frame:CGRect(x:10,y:164,width:300,height:40))
        label.text = "Welcome to study Swift ！1123131sfdfsdfdsf232"
        
        label.backgroundColor = UIColor.yellow
        
        self.view.addSubview(label)
        
        // label的字体颜色
        label.textColor=UIColor.red
        
        label.textAlignment=NSTextAlignment.center //文字右对齐
        label.shadowColor=UIColor.gray //灰色阴影
        //        label.shadowOffset = CGSize(width:-5,height:5)//阴影的偏移量
        label.numberOfLines = 0
        
        label.adjustsFontSizeToFitWidth = true //当文字超出标签宽度时，自动调整文字大小，使其不被截断
        
        
        //设置label文本高亮
        label.isHighlighted = true
        //设置label文本高亮
        label.highlightedTextColor = UIColor.green
        
        //    label圆角属性
        label.layer.masksToBounds = true;
        //    label圆角半径
        label.layer.cornerRadius = 10;
        //    label圆角边框颜色
        label.layer.borderColor = UIColor.blue.cgColor;
        //    label圆角边框宽度
        label.layer.borderWidth = 1;
        
        
        
        //  label的字体大小
        /**
         systemFontOfSize(20) -> UIFont         (文字大小)
         boldSystemFontOfSize(20) -> UIFont     (加粗类型)
         italicSystemFontOfSize(20) -> UIFont    (斜体类型)
         */
        label.font = UIFont.systemFont(ofSize: 14)
        // 设置字体时，同时设置大小
        //        label.font = UIFont(name:"您好！", size:14)
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
