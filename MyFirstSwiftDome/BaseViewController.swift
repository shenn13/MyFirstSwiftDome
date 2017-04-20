//
//  BaseViewController.swift
//  MyFirstSwiftDome
//
//  Created by shen on 17/4/20.
//  Copyright © 2017年 shen. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
//        自定义
//        let button = UIButton(frame:CGRect(x:0,y:0,width:40,height:40))
//        button.setTitle("返回", for:UIControlState.normal)
//        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
//        let backItem = UIBarButtonItem.init(customView:button)
//        self.navigationItem.rightBarButtonItem = backItem
        
        
        let backItem = UIBarButtonItem.init(image:UIImage(named:"backImage"), style: UIBarButtonItemStyle.plain, target: self, action: #selector(BaseViewController.popDoBack))
        self.navigationItem.leftBarButtonItem = backItem
        
        
        // Do any additional setup after loading the view.
    }
    
    func popDoBack(){
        
        self.navigationController?.popViewController(animated: true)
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
