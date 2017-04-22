//
//  ImageVC.swift
//  MyFirstSwiftDome
//
//  Created by shen on 17/4/22.
//  Copyright © 2017年 shen. All rights reserved.
//

import UIKit

class ImageVC: BaseViewController {
    
    var picStr : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let imageView = UIImageView(image:UIImage(named:picStr!))
        imageView.frame = CGRect(x:0,y:64,width:self.view.bounds.size.width,height:self.view.bounds.size.height - 64)
        self.view.addSubview(imageView)
        

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
