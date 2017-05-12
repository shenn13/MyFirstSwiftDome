//
//  ThirdViewController.swift
//  MyFirstSwiftDome
//
//  Created by shen on 17/4/20.
//  Copyright © 2017年 shen. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController,BBannerViewDelegate, BBannerViewDataSource {

    var bbannerView: BBannerView!
    
    var  dataArr = ["pic1.jpeg","pic2.jpeg","pic3.jpeg","pic4.jpeg","pic5.jpeg","pic6.jpeg","pic7.jpeg","pic8.jpeg","pic9.jpeg","pic10.jpeg"]
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.automaticallyAdjustsScrollViewInsets = false
        
        bbannerView = BBannerView(frame: CGRect(x: 0, y: 64, width: UIScreen.main.bounds.size.width, height: 150))
        
        bbannerView.dataSource = self
        bbannerView.delegate = self
        bbannerView.backgroundColor = UIColor.yellow
        view.addSubview(bbannerView)
        
        bbannerView.reloadData()
        bbannerView.startAutoScroll(timeIntrval: 4)
        
    }
    
    // MARK: - BBanerViewDataSource
    
    func numberOfItems() -> Int {
        
        return dataArr.count
    }
    
    func viewForItem(bannerView: BBannerView, index: Int) -> UIView {
        
        let imageView = UIImageView(frame: bannerView.bounds)
        
        imageView.image = UIImage(named: dataArr[index])
        
        return imageView
    }
    
    // MARK: - BBannerViewDelegate
    
    func didSelectItem(index: Int) {
        
        print("banner1 index: \(index)")
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
