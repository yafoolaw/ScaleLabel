//
//  ScaleLabel.swift
//  ScaleLabel
//
//  Created by FrankLiu on 16/1/20.
//  Copyright © 2016年 FrankLiu. All rights reserved.
//

import UIKit

class ScaleLabel: UIView {

    var m_text            : String? {
        
        willSet {
        
            m_backLabel.text  = newValue
            m_colorLabel.text = newValue
        }
    }
    
    var m_font            : UIFont? {
    
        willSet {
        
            m_backLabel.font  = newValue
            m_colorLabel.font = newValue
        }
    }
    var m_startScale      : Float? {
    
        willSet {
            
            m_backLabel.transform  = CGAffineTransformMake(CGFloat(newValue!), 0, 0, CGFloat(newValue!), 0, 0)
            m_colorLabel.transform = CGAffineTransformMake(CGFloat(newValue!), 0, 0, CGFloat(newValue!), 0, 0)
        }
    }
    var m_endScale        : Float?
    var m_backLabelColor  : UIColor? {
    
        willSet {
            
            m_backLabel.textColor = newValue
        }
    }
    var m_colorLabelColor : UIColor? {
    
        willSet {
        
            m_colorLabel.textColor = newValue
        }
    }
    
    private
    var m_backLabel  : UILabel!
    
    private
    var m_colorLabel : UILabel!
    
    func startAnimation() {
    
        if(self.m_endScale == 0) {
        
            self.m_endScale = 2.0
        }
        
        [UIView .animateWithDuration(1, delay: 0, usingSpringWithDamping: 7, initialSpringVelocity: 4, options: .CurveEaseInOut, animations: { [weak self]() -> Void in
            
            if let strongSelf = self {
            
                strongSelf.m_backLabel.alpha     = 1.0
                strongSelf.m_backLabel.transform = CGAffineTransformIdentity
                
                strongSelf.m_colorLabel.alpha     = 1.0
                strongSelf.m_colorLabel.transform = CGAffineTransformIdentity
            }
            
            }, completion: { (Bool) -> Void in
                
                [UIView .animateWithDuration(2, delay: 0.5, usingSpringWithDamping: 7, initialSpringVelocity: 4, options: .CurveEaseInOut, animations: { () -> Void in
                    
                    self.m_colorLabel.alpha     = 0
                    self.m_colorLabel.transform = CGAffineTransformMake(CGFloat(self.m_endScale!), 0, 0, CGFloat(self.m_endScale!), 0, 0)
                    
                    }, completion: nil)]
        })]
    }
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        self.m_backLabel  = UILabel(frame: self.bounds)
        self.m_colorLabel = UILabel(frame: self.bounds)
        
        self.addSubview(self.m_backLabel)
        self.addSubview(self.m_colorLabel)
        
        self.m_backLabel.alpha  = 0
        self.m_colorLabel.alpha = 0
        
        self.m_backLabel.textAlignment  = .Center
        self.m_colorLabel.textAlignment = .Center
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
