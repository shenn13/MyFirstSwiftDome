//
//  CollectionViewController.swift
//  MyFirstSwiftDome
//
//  Created by shen on 17/4/22.
//  Copyright © 2017年 shen. All rights reserved.
//

import UIKit

class CollectionViewController: BaseViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    var collectionView: UICollectionView!
    var  dataArr = ["pic1.jpeg","pic2.jpeg","pic3.jpeg","pic4.jpeg","pic5.jpeg","pic6.jpeg","pic7.jpeg","pic8.jpeg","pic9.jpeg","pic10.jpeg","pic​​11.jpeg","pic12.jpeg","pic13.jpeg","pic14.jpeg","pic15.jpeg","pic16.jpeg","pic17.jpeg","pic18.jpeg"];
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setCollectionViewUIData()
        
        // Do any additional setup after loading the view.
    }
    
    func setCollectionViewUIData () -> Void {
        
        collectionView = UICollectionView.init(frame: self.view.bounds, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.backgroundColor = UIColor.groupTableViewBackground
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView!.register(CollectionViewCell.self, forCellWithReuseIdentifier: "CollectionCell")
        
        self.view.addSubview(self.collectionView)
    }

    
    //collectViewDetegate
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return dataArr.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! CollectionViewCell
        let imageView = UIImageView(frame: cell.bounds)
        imageView.image = UIImage(named:"\(dataArr[indexPath.row])")
        cell.backgroundView = imageView
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(10, 10, 10, 10)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (self.view.bounds.size.width - 60)/3, height: 160)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailVC = ImageVC()
        detailVC.picStr = "\(dataArr[indexPath.row])"
        self.navigationController?.pushViewController(detailVC, animated: true)
        
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
