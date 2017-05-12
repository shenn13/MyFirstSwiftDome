//
//  ControlOrientationVC.swift
//  MyFirstSwiftDome
//
//  Created by shen on 17/4/22.
//  Copyright © 2017年 shen. All rights reserved.
//

import UIKit


enum ScreenOrientation {
    case portrait, landscapeLeft
}

class ControlOrientationVC: BaseViewController {
    
    var orientation = ScreenOrientation.portrait
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let button = UIButton(frame:CGRect(x:10,y:0,width:60,height:30))
        button.setTitle("返回", for:UIControlState.normal)
        button.setTitleColor(UIColor.white,for:.normal)
        button.backgroundColor = UIColor.black
        button.addTarget(self,action:#selector(clicked),for:.touchUpInside)
        self.view.addSubview(button);
        
        // Do any additional setup after loading the view.
    }

    func clicked(){
        
        self .dismiss(animated: true, completion: nil)
        
    }
    override var supportedInterfaceOrientations : UIInterfaceOrientationMask {
        
        if self.orientation == ScreenOrientation.landscapeLeft {
            
            return UIInterfaceOrientationMask.landscapeLeft
            
        }else{
            
            return UIInterfaceOrientationMask.portrait
        }
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
