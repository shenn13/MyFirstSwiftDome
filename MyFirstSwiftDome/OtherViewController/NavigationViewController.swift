//
//  NavigationViewController.swift
//  MyFirstSwiftDome
//
//  Created by shen on 17/4/20.
//  Copyright © 2017年 shen. All rights reserved.
//

import UIKit

class NavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        /// 设置导航栏标题
        let navBar = UINavigationBar.appearance()
        
        navBar.barTintColor = kMainScreenViewColor
        navBar.tintColor = UIColor.white
        navBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white, NSFontAttributeName: UIFont.systemFont(ofSize: 18)]
        
        // Do any additional setup after loading the view.
    }

    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if viewControllers.count > 0 {
            
            viewController.hidesBottomBarWhenPushed = true
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "backImage"), style: .plain, target: self, action: #selector(self.back))
            
            //自定义返回按钮
            //            let backBtn = UIButton(frame: CGRect(x: 0, y: 0, width: 30, height: 44))
            //            backBtn.setImage(UIImage(named: "checkUserType_backward_9x15_"), for: .normal)
            //            backBtn.addTarget(self, action: #selector(self.back), for: .touchUpInside)
            //            let barBackBtn = UIBarButtonItem(customView: backBtn)
            //            viewController.navigationItem.leftBarButtonItems = [barBackBtn]
        }
        super.pushViewController(viewController, animated: animated)
    }
    
    func back() {
        
        self.popViewController(animated: true)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //    private func shouldAutorotate() -> Bool {
    //        if (self.topViewController?.isKind(of:UIViewController.self))! {
    //            return (self.topViewController?.shouldAutorotate)!;
    //        }
    //        return false
    //    }
    //    private func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
    //        if (self.topViewController?.isKind(of:UIViewController.self))! {
    //            return (self.topViewController?.supportedInterfaceOrientations)!;
    //        }
    //        return .portrait
    //    }
    
    //    private func preferredInterfaceOrientationForPresentation() -> UIInterfaceOrientation {
    //        return .landscapeLeft
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
