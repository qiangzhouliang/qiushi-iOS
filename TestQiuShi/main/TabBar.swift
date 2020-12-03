//
//  TabBar.swift
//  TestQiuShi
//
//  Created by qiangzhouliang on 2020/12/2.
//

import UIKit

class TabBar: UITabBar {
    override func layoutSubviews() {
        super.layoutSubviews()
        
        for button in subviews where button is UIControl {
            var frame = button.frame
            frame.origin.y = -10
            button.frame = frame
        }
    }
}
