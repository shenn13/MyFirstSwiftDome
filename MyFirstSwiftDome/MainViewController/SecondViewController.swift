//
//  SecondViewController.swift
//  MyFirstSwiftDome
//
//  Created by shen on 17/4/20.
//  Copyright © 2017年 shen. All rights reserved.
//

import UIKit
import MJRefresh

class SecondViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    var layout = UICollectionViewFlowLayout()
    var collectionView:UICollectionView?
    var listModels  = [SecondModel]()
    var offset = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        setupCollectionView()
        
        getData(offset: offset)
        
        collectionView?.mj_header = MJRefreshNormalHeader(refreshingTarget:self,refreshingAction:#selector(loadNew))
        collectionView?.mj_footer = MJRefreshAutoNormalFooter(refreshingTarget: self, refreshingAction: #selector(loadMore))
        
        // Do any additional setup after loading the view.
    }
    
    @objc private func loadNew(){
        
        offset = 0
        collectionView!.mj_header.beginRefreshing()
        getData(offset: offset)
        collectionView!.mj_header.endRefreshing()
        
    }
    @objc private func loadMore() {
        
        collectionView!.mj_footer.beginRefreshing()
        getData(offset: offset)
        collectionView!.mj_footer.endRefreshing()
    
    }
    
    func getData(offset: Int){
    
        let param = [
            "gender": "1",
            "generation": "1",
            "limit": "20",
            "offset": String(offset),
            ]
        
        AFNetworkManager.get(api.danPinListUrl, param: param, success: { (response) in
            
            print(response)
            
            if offset == 0{
                
                self.listModels.removeAll()
            }
            self.offset += 20
            
            if let data = response["data"]["items"].arrayObject{
                for item in data {
                    
                    let list = SecondModel(dict: item as! [String : AnyObject])
                    self.listModels.append(list)
                }
            }
            self.collectionView?.reloadData()
        }) { (error) in
            
        }
        
    }
    func setupCollectionView(){
        
        layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        
        collectionView = UICollectionView(frame:CGRect(x:0,y:0,width:kScreenWidth,height:kScreenHeight),collectionViewLayout:layout)
        collectionView!.delegate = self
        collectionView!.dataSource = self
        
        collectionView?.backgroundColor = UIColor.groupTableViewBackground
        view.addSubview(collectionView!)
        
        collectionView!.register(UINib.init(nibName:"SecondCollectionViewCell", bundle:nil), forCellWithReuseIdentifier: "secondCollectionCell")
        
    }

    //collectViewDetegate
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listModels.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: "secondCollectionCell", for: indexPath) as! SecondCollectionViewCell
        let model = listModels[indexPath.row]
        cell.model = model
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(10, 10, 10, 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: kScreenWidth / 2 - 15, height: 190)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
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

