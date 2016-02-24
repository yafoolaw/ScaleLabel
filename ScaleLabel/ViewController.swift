//
//  ViewController.swift
//  ScaleLabel
//
//  Created by FrankLiu on 16/1/20.
//  Copyright © 2016年 FrankLiu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.blackColor()
            
        let scaleLabel1 :ScaleLabel = ScaleLabel(frame: CGRect(x: 0, y: 80, width: 300, height: 50))
        
        scaleLabel1.m_text            = "刘大帅"
        scaleLabel1.m_startScale      = 0.3
        scaleLabel1.m_endScale        = 2
        scaleLabel1.m_backLabelColor  = UIColor.whiteColor()
        scaleLabel1.m_colorLabelColor = UIColor.cyanColor()
        scaleLabel1.m_font            = UIFont(name: "Avenir-Light", size: 20)
        
        self.view.addSubview(scaleLabel1)
        
        let scaleLabel2 :ScaleLabel = ScaleLabel(frame: CGRect(x: 0, y: 180, width: 300, height: 50))
        
        scaleLabel2.m_text            = "Frank Liu"
        scaleLabel2.m_startScale      = 0.3
        scaleLabel2.m_endScale        = 2
        scaleLabel2.m_backLabelColor  = UIColor.cyanColor()
        scaleLabel2.m_colorLabelColor = UIColor.purpleColor()
        scaleLabel2.m_font            = UIFont(name: "Avenir-Light", size: 20)
        
        self.view.addSubview(scaleLabel2)
        
        let scaleLabel3 :ScaleLabel = ScaleLabel(frame: CGRect(x: 0, y: 280, width: 300, height: 50))
        
        scaleLabel3.m_text            = "You Xian Ming"
        scaleLabel3.m_startScale      = 0.3
        scaleLabel3.m_endScale        = 2
        scaleLabel3.m_backLabelColor  = UIColor.purpleColor()
        scaleLabel3.m_colorLabelColor = UIColor.orangeColor()
        scaleLabel3.m_font            = UIFont(name: "Avenir-Light", size: 20)
        
        self.view.addSubview(scaleLabel3)
        
        // 执行动画
        GCDQueue.mainQueue().execute({ () -> Void in
            
            scaleLabel1.startAnimation()
            scaleLabel2.startAnimation()
            scaleLabel3.startAnimation()
            
            }, afterDelaySecs: 7)
        
    }
}

