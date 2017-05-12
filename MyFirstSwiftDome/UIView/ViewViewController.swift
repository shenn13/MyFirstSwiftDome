//
//  ViewViewController.swift
//  MyFirstSwiftDome
//
//  Created by shen on 17/4/20.
//  Copyright © 2017年 shen. All rights reserved.
//

import UIKit

class ViewViewController: BaseViewController {
    
    var titleText:String?
//    var myView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
          self.navigationItem.title = titleText

        
        let myView = UIView()
        
        myView.frame = CGRect(x:10,y:74,width:kScreenWidth - 20,height:kScreenHeight - 20 - 64)
        myView.backgroundColor = UIColor.yellow
        self.view.addSubview(myView)
        
        
        //    圆角属性
        myView.layer.masksToBounds = true;
        //    圆角半径
        myView.layer.cornerRadius = 20;
        //    圆角边框颜色
        myView.layer.borderColor = UIColor.blue.cgColor;
        //    圆角边框宽度
        myView.layer.borderWidth = 10;
        
        
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
