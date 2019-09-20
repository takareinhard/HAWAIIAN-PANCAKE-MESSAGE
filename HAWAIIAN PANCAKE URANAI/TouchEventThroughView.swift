//
//  TouchEventThroughView.swift
//  HAWAIIAN PANCAKE URANAI
//
//  Created by 弘田朗 on 2019/09/16.
//  Copyright © 2019 a. All rights reserved.
//

import UIKit

class TouchEventThroughView: UIView {
    
    // 上に載せたボタンのCGRect
    var rect_topButton : CGRect?
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        
        // 上のボタンの位置だったら透過させない
        if (rect_topButton!.contains(point)) {
            return true
        }
        
        // それ以外は透過させる
        return false
    }
}
