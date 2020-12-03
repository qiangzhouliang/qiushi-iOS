//
//  TableViewController.swift
//  TestQiuShi
//
//  Created by qiangzhouliang on 2020/12/2.
//

import UIKit

class TableViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChild("首页", "thumb_pic", "thumb_pic", HomeViewController.self)
        
        addChild("动态", "thumb_pic", "thumb_pic", TrendViewController.self)
        
        addChild("直播", "thumb_pic", "thumb_pic", LiveViewController.self)
        
        
    }
    
    func addChild(_ title: String,_ image: String, _ selectedImage: String,_ type: UIViewController.Type) {
        let child = UINavigationController(rootViewController: type.init())
        child.title = title
        child.tabBarItem.title = title
        child.tabBarItem.image = UIImage(named: image)
        child.tabBarItem.selectedImage = UIImage(named: selectedImage)
        addChild(child)
    }
}
