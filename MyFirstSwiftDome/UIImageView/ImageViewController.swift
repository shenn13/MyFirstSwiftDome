//
//  ImageViewController.swift
//  MyFirstSwiftDome
//
//  Created by shen on 17/4/20.
//  Copyright © 2017年 shen. All rights reserved.
//

import UIKit

class ImageViewController: BaseViewController {
    var titleText: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = titleText
        
        let imageView1 = UIImageView(image:UIImage(named:"Image1"))
        imageView1.frame = CGRect(x:10, y:80, width:300, height:150)
        self.view.addSubview(imageView1)
        imageView1.backgroundColor = UIColor.yellow
//        保持图片比例
        imageView1.contentMode = .scaleAspectFit
        
        //    圆角属性
        imageView1.layer.masksToBounds = true;
        //    圆角半径
        imageView1.layer.cornerRadius = 10;
        //    圆角边框颜色
        imageView1.layer.borderColor = UIColor.blue.cgColor;
        //    圆角边框宽度
        imageView1.layer.borderWidth = 1;
        
        imageView1.isUserInteractionEnabled = true
        //添加tapGuestureRecognizer手势
        let tap = UITapGestureRecognizer(target: self, action:#selector(imageClicked(_:)))
        imageView1.addGestureRecognizer(tap)
        
        
//        从文件目录中获取图片
        let path = Bundle.main.path(forResource:"书包看书", ofType: "png")
        let newImage = UIImage(contentsOfFile: path!)
        let imageView2 = UIImageView(image:newImage)
        imageView2.frame = CGRect(x:10, y:300, width:300, height:150)
        self.view.addSubview(imageView2)
        
      
//        从网络地址获取图片 
        //定义URL对象
        let url = URL(string: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1492674071220&di=a6e4d91b17e238f5393764e535afdac7&imgtype=0&src=http%3A%2F%2Ftupian.enterdesk.com%2Fuploadfile%2F2015%2F0805%2F20150805112453537.jpg")
        //从网络获取数据流
        let data = try! Data(contentsOf: url!)
        //通过数据流初始化图片
        let Image = UIImage(data: data)
        let imageView3 = UIImageView(image:Image);
        imageView3.frame = CGRect(x:10, y:480, width:300, height:150)
        self.view.addSubview(imageView3)
        imageView3.contentMode = .scaleAspectFit
        imageView3.backgroundColor = UIColor.red
        // Do any additional setup after loading the view.
    }

    
    //手势处理函数
    func imageClicked(_ sender:UITapGestureRecognizer) {
        
      print("点击了图片")
        
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
