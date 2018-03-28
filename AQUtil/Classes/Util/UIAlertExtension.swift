//
//  UIAlertExtension.swift
//  XMMS
//
//  Created by 侯云杰 on 2018/3/27.
//  Copyright © 2018年 aq. All rights reserved.
//

import UIKit

extension UIAlertController{
    
    //在指定控制器弹出提示框
    static func showAlert(message: String, in viewController: UIViewController){
        
        let alert = UIAlertController(title: nil,message: message,preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "确定", style: .cancel, handler: nil))
        viewController.present(alert, animated: true, completion: nil)
    }
    //在根视图上弹出提示框
    static func showAlert(message: String){
        
        if let vc = UIApplication.shared.keyWindow?.rootViewController{
            showAlert(message: message,in: vc)
        }
    }
    //在指定视图上弹出确认框
    static func showConfirm(message: String, in viewController: UIViewController, confirm: ((UIAlertAction) -> Void)?){
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "确认", style: .default, handler: confirm))
        alert.addAction(UIAlertAction(title: "取消", style: .cancel ))
        viewController.present(alert, animated: true)
        
    }
    //在根视图弹出确认框
    static func showConfirm(message: String, confirm:((UIAlertAction) ->Void)?){
        if let vc = UIApplication.shared.keyWindow?.rootViewController{
            showConfirm(message: message, in: vc ,confirm: confirm)
        }
    }
}
