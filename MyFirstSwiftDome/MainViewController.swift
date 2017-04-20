//
//  MainViewController.swift
//  MyFirstSwiftDome
//
//  Created by shen on 17/4/20.
//  Copyright © 2017年 shen. All rights reserved.
//

import UIKit

class MainViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
  var dataSource = ["Label","Button","UIView","UITextField","UIImageView"]
    
  var tableView: UITableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "学习";
        
        self.navigationController?.navigationBar.barTintColor = UIColor.black
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.white]
        
        tableView = UITableView(frame:CGRect(x:0,y:0,width:self.view.frame.size.width,height:self.view.frame.size.height), style:UITableViewStyle.plain)
        tableView.delegate = self
        tableView.dataSource = self
        self.view .addSubview(tableView)
        
       

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataSource.count
    }
    
    //tableViewCell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellId = "cellId"
        
        var cell = tableView.dequeueReusableCell(withIdentifier: cellId)
        
        if (cell == nil) {
            cell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: cellId)
        }
        
        cell?.textLabel?.text = "\(self.dataSource[indexPath.row])"
        cell?.textLabel?.textAlignment = NSTextAlignment.center
        
        return cell!
    }
    
    //点击
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView .deselectRow(at: indexPath, animated: true)
        
        
        if (indexPath.row == 0) {
            
            let vc = LabelViewController()
            
            vc.titleText = "\(self.dataSource[indexPath.row])"
            
            self.navigationController?.pushViewController(vc, animated: false)
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
