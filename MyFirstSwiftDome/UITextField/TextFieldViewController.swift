//
//  TextFieldViewController.swift
//  MyFirstSwiftDome
//
//  Created by shen on 17/4/20.
//  Copyright © 2017年 shen. All rights reserved.
//

import UIKit

class TextFieldViewController: BaseViewController ,UITextFieldDelegate{
    var titleText: String?
    override func viewDidLoad() {
        super.viewDidLoad()

          self.navigationItem.title = titleText
        
        
        
        let textField = UITextField(frame:CGRect(x:10, y:80, width:300, height:50))
        
        textField.borderStyle = UITextBorderStyle.roundedRect
        
        textField.placeholder = "请输入用户名"
        
        textField.minimumFontSize = 12
        
        textField.tintColor = UIColor.red
        
        textField.textAlignment = .center
        
        /** 水平对齐 **/
//        textField.textAlignment = .right //水平右对齐
//        textField.textAlignment = .center //水平居中对齐
//        textField.textAlignment = .left //水平左对齐
        
        /** 垂直对齐 **/
//        textField.contentVerticalAlignment = .top  //垂直向上对齐
//        textField.contentVerticalAlignment = .center  //垂直居中对齐
//        textField.contentVerticalAlignment = .bottom  //垂直向下对齐
        
        textField.clearButtonMode = .whileEditing
        
//        textField.clearButtonMode=UITextFieldViewMode.whileEditing  //编辑时出现清除按钮
//        textField.clearButtonMode=UITextFieldViewMode.unlessEditing  //编辑时不出现，编辑后才出现清除按钮
//        textField.clearButtonMode=UITextFieldViewMode.always  //一直显示清除按钮
        
        textField.keyboardType = .default
        
        self.view.addSubview(textField)
        
//        文字大小超过文本框长度时自动缩小字号
        textField.adjustsFontSizeToFitWidth = true
        
        textField.borderStyle = .none //先要去除边框样式
        textField.backgroundColor = UIColor.brown
        
        textField.delegate = self
        
        
        // Do any additional setup after loading the view.
    }
    
    // 输入框询问是否可以编辑 true 可以编辑  false 不能编辑
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        
        print("我要开始编辑了...")
        
        return true
    }
    // 该方法代表输入框已经可以开始编辑  进入编辑状态
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        print("我正在编辑状态中...")
    }
    // 输入框将要将要结束编辑
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        
        print("我即将编辑结束...")
        
        return true
    }
    // 输入框结束编辑状态
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        print("我已经结束编辑状态...")
        
    } // 文本框是否可以清除内容
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        
        return true
    }
    // 输入框按下键盘 return 收回键盘
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }
    // 该方法当文本框内容出现变化时 及时获取文本最新内容
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        
        return true
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
        print("你点击了空白")
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
