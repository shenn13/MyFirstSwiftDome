//
//  ButtonViewController.swift
//  MyFirstSwiftDome
//
//  Created by shen on 17/4/20.
//  Copyright © 2017年 shen. All rights reserved.
//

import UIKit

class ButtonViewController: BaseViewController {

    var titleText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.automaticallyAdjustsScrollViewInsets = true
        
        self.navigationItem.title = titleText
        
        let button = UIButton(frame:CGRect(x:10,y:64,width:300,height:40))
        
       // 按钮的文字设置
        button.setTitle("普通状态", for:UIControlState.normal) //普通状态下的文字
//        button.setTitle("触摸状态", for:UIControlState.highlighted) //触摸状态下的文字
//        button.setTitle("禁用状态", for:UIControlState.disabled) //禁用状态下的文字
        
       // 按钮文字颜色的设置
        button.setTitleColor(UIColor.yellow,for:.normal) //普通状态下文字的颜色
//        button.setTitleColor(UIColor.green,for:.highlighted) //触摸状态下文字的颜色
//        button.setTitleColor(UIColor.gray,for:.disabled) //禁用状态下文字的颜色
        
      //  按钮背景颜色设置
//        button.backgroundColor = UIColor.black
        
       // 按钮文字图标的设置
        button.setImage(UIImage(named:"icon1"),for:.normal)  //设置图标
        button.adjustsImageWhenHighlighted=false //使触摸模式下按钮也不会变暗
        button.adjustsImageWhenDisabled=false //使禁用模式下按钮也不会变暗
        
        //设置按钮背景图片
        button.setBackgroundImage(UIImage(named:"background1"),for:.normal)
        
        self.view.addSubview(button);
        
        //不传递触摸对象（即点击的按钮）
//        button.addTarget(self,action:#selector(clicked),for:.touchUpInside)
        
        //传递触摸对象（即点击的按钮），需要在定义action参数时，方法名称后面带上冒号
        button.addTarget(self,action:#selector(buttonClicked(_:)),for:.touchUpInside)
        
        button.tag = 3
        
        //    button圆角属性
        button.layer.masksToBounds = true;
        //    button圆角半径
        button.layer.cornerRadius = 10;
        //    button圆角边框颜色
        button.layer.borderColor = UIColor.blue.cgColor;
        //    button圆角边框宽度
        button.layer.borderWidth = 1;

        
        // Do any additional setup after loading the view.
    }
    
    func clicked(){
        
        print("按钮被点击~~~~~~")
        
    }
   
    func buttonClicked(_ button:UIButton){
        
        print("按钮被点击~~~~~--%ld------~",button.tag)
        
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
