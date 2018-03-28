//
//  UIButton+Extension.swift
//  XMMS
//
//  Created by 侯云杰 on 2018/2/23.
//  Copyright © 2018年 aq. All rights reserved.
//

import UIKit

extension UIButton{
    //倒计时
    public func countDown(count: Int){
        
        //defeault property
        isEnabled = false
        let defaultColor = self.backgroundColor
        backgroundColor = UIColor.gray
        
        var remainingCount: Int = count
        {

            willSet{
                setTitle("重新获取\(newValue)", for: .normal)
                if newValue <= 0 {
                    setTitle("获取验证码", for:.normal)
                }
            }
        }
        
        let codeTimer = DispatchSource.makeTimerSource(queue: DispatchQueue.global())
        codeTimer.schedule(deadline: .now(), repeating: .seconds(1))
        codeTimer.setEventHandler(handler: {
            
            DispatchQueue.main.async {
                
                remainingCount -= 1
                if remainingCount <= 0 {
                    
                    self.backgroundColor = defaultColor
                    self.isEnabled = true
                    codeTimer.cancel()
                }
            }
            
        })
        codeTimer.resume()
    }
    
    
}
