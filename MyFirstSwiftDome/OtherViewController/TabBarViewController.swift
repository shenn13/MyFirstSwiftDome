//
//  TabBarViewController.swift
//  MyFirstSwiftDome
//
//  Created by shen on 17/4/20.
//  Copyright © 2017年 shen. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setAllChildViewController()
        
        
        // Do any additional setup after loading the view.
    }
    
    private func setAllChildViewController(){
        
        addChildViewController(childController: FirstViewController(), title: "首页", imageName: "TabBar_home_23x23_", selectImageName: "TabBar_home_23x23_selected")
         addChildViewController(childController: SecondViewController(), title: "分类", imageName: "TabBar_gift_23x23_", selectImageName: "TabBar_gift_23x23_selected")
         addChildViewController(childController: ThirdViewController(), title: "搜索", imageName: "TabBar_category_23x23_", selectImageName: "TabBar_category_23x23_selected")
         addChildViewController(childController: FourViewController(), title: "设置", imageName: "TabBar_me_boy_23x23_", selectImageName: "TabBar_me_boy_23x23_selected")
        
    }
    
    private func addChildViewController(childController: UIViewController, title:String,imageName:String,selectImageName:String) {
        childController.title = title
        tabBar.tintColor = UIColor.red
        tabBar.barTintColor = kMainScreenViewColor
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage  = UIImage(named:selectImageName)
        addChildViewController(NavigationViewController(rootViewController:childController))
    }

    override var supportedInterfaceOrientations : UIInterfaceOrientationMask {
        
        return UIInterfaceOrientationMask.portrait
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //    private func shouldAutorotate() -> Bool {
    //
    //        if (self.selectedViewController?.isEqual(self.viewControllers?[0]))! {
    //            return (self.selectedViewController?.shouldAutorotate)!;
    //        }
    //        return false
    //    }
    //    private func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
    //
    //        if (self.selectedViewController?.isEqual(self.viewControllers?[0]))! {
    //            return (self.selectedViewController?.supportedInterfaceOrientations)!
    //        }
    //        return .portrait
    //    }

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
