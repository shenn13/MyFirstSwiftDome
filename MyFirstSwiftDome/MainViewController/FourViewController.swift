
//
//  FourViewController.swift
//  MyFirstSwiftDome
//
//  Created by shen on 17/4/20.
//  Copyright © 2017年 shen. All rights reserved.
//

import UIKit

class FourViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    var dataSource = ["Label详情","Button详情","UIView详情","UITextField详情","UIImageView详情","横竖屏切换","CollectionView"]
    
    var tableView: UITableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "学习";
        
        tableView = UITableView(frame:CGRect(x:0,y:0,width:self.view.frame.size.width,height:self.view.frame.size.height), style:UITableViewStyle.plain)
        tableView.delegate = self
        tableView.dataSource = self
        self.view .addSubview(tableView)

        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataSource.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 80
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
        cell?.textLabel?.font = UIFont.systemFont(ofSize: 18)
        return cell!
    }
    
    //点击
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView .deselectRow(at: indexPath, animated: true)
        
        //Label
        if (indexPath.row == 0) {
            let labelVC = LabelViewController()
            labelVC.titleText = "\(self.dataSource[indexPath.row])"
            self.navigationController?.pushViewController(labelVC, animated: false)
        }//Button
        else if (indexPath.row == 1) {
            
            let buttonVC = ButtonViewController()
            buttonVC.titleText = "\(self.dataSource[indexPath.row])"
            self.navigationController?.pushViewController(buttonVC, animated: false)
        }//UIView
        else if (indexPath.row == 2) {
            
            let viewVC = ViewViewController()
            viewVC.titleText = "\(self.dataSource[indexPath.row])"
            self.navigationController?.pushViewController(viewVC, animated: false)
            
        }//UITextField
        else if (indexPath.row == 3) {
            
            let textFieldVC = TextFieldViewController()
            textFieldVC.titleText = "\(self.dataSource[indexPath.row])"
            self.navigationController?.pushViewController(textFieldVC, animated: false)
        }//UIimageView
        else if (indexPath.row == 4) {
            
            let imageVC = ImageViewController()
            imageVC.titleText = "\(self.dataSource[indexPath.row])"
            self.navigationController?.pushViewController(imageVC, animated: false)
        }//横竖屏切换
        else if (indexPath.row == 5) {
            
            let OrientationVC = ControlOrientationVC()
            OrientationVC.orientation = ScreenOrientation.landscapeLeft
            self.present(OrientationVC, animated: true, completion: nil)
        }
        
        else if (indexPath.row == 6) {
            let CollectionVC = CollectionViewController()
            self.navigationController?.pushViewController(CollectionVC, animated: true)
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
