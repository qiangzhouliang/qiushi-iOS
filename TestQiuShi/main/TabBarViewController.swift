//
//  TabBarViewController.swift
//  TestQiuShi
//
//  Created by qiangzhouliang on 2020/12/2.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //设置自己的tabbar
        setValue(TabBar(), forKey: "tabBar")
        
        //设置底部导航栏的颜色
        tabBar.barTintColor = UIColor.white
        
        addChild("首页", "wifi", "wifi", HomeViewController.self)
        
        addChild("动态", "thumb_pic", "thumb_pic", TrendViewController.self)
        
        addChild("直播", "thumb_pic", "thumb_pic", LiveViewController.self)
        
        
    }
    
    func addChild(_ title: String,_ image: String, _ selectedImage: String,_ type: UIViewController.Type) {
        let child = UINavigationController(rootViewController: type.init())
        child.title = title
        child.tabBarItem.title = title
        //设置选中时的文字背景
        child.tabBarItem.setTitleTextAttributes([
            NSAttributedString.Key.foregroundColor: UIColor.black
        ], for: .selected)
        child.tabBarItem.image = UIImage.init(named: image)
        child.tabBarItem.selectedImage = UIImage(named: selectedImage)
        addChild(child)
    }

}
