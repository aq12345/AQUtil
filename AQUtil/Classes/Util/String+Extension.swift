//
//  String+Extension.swift
//  BSBDJ
//
//  Created by apple on 2017/11/6.
//  Copyright © 2017年 incich. All rights reserved.
//

import UIKit
//字符串的正则校验
enum Validate {
    case email(_: String)
    case phoneNum(_: String)
    case carNum(_: String)
    case username(_: String)
    case password(_: String)
    case nickname(_: String)
    
    case URL(_: String)
    case IP(_: String)
    
    
    var isRight: Bool {
        var predicateStr:String!
        var currObject:String!
        switch self {
        case let .email(str):
            predicateStr = "^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"
            currObject = str
        case let .phoneNum(str):
            predicateStr = "^((13[0-9])|(15[^4,\\D]) |(17[0,0-9])|(18[0,0-9]))\\d{8}$"
            currObject = str
        case let .carNum(str):
            predicateStr = "^[A-Za-z]{1}[A-Za-z_0-9]{5}$"
            currObject = str
        case let .username(str):
            predicateStr = "^[A-Za-z0-9]{6,20}+$"
            currObject = str
        case let .password(str):
            predicateStr = "^[a-zA-Z0-9]{6,20}+$"
            currObject = str
        case let .nickname(str):
            predicateStr = "^[\\u4e00-\\u9fa5]{2,8}$"
            currObject = str
        case let .URL(str):
            predicateStr = "^(https?:\\/\\/)?([\\da-z\\.-]+)\\.([a-z\\.]{2,6})([\\/\\w \\.-]*)*\\/?$"
            currObject = str
        case let .IP(str):
            predicateStr = "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$"
            currObject = str
        }
        
        let predicate =  NSPredicate(format: "SELF MATCHES %@" ,predicateStr)
        return predicate.evaluate(with: currObject)
    }
}

extension String {
    
    /// 获取高度计算
    ///
    /// - Parameters:
    ///   - size: 矩形已知范围
    ///   - attributes: 文字属性
    /// - Returns: 高度
    public func height(_ size: CGSize, _ attributes: [NSAttributedStringKey: Any]?) -> CGFloat {
        
        let string = self as NSString
        
        let stringSize = string.boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
        
        return stringSize.height
        
    }
    /// 获取宽度计算
    ///
    /// - Parameters:
    ///   - size: 矩形已知范围
    ///   - attributes: 文字属性
    /// - Returns: 宽度
    public func width(_ size: CGSize, _ attributes: [NSAttributedStringKey: Any]?) -> CGFloat {
        // parameter: 宽度计算参数
        // attribute
        let string = self as NSString
        
        let stringSize = string.boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
        //return stringSize.width
        return stringSize.width
        
    }
    
    
  
    
   
    
    
}
