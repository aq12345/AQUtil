//
//  UserDefault+Extension.swift
//  XMMS
//
//  Created by 侯云杰 on 2018/2/26.
//  Copyright © 2018年 aq. All rights reserved.
//

import Foundation



protocol UserDefaultsSettable {
    
    associatedtype defaultKeys: RawRepresentable
}


extension UserDefaultsSettable where defaultKeys.RawValue == String {
    
    static func set(value: String?, forKey key: defaultKeys) {
        let aKey = key.rawValue
        UserDefaults.standard.set(value, forKey: aKey)
    }
    static func string(forKey key: defaultKeys) -> String? {
        let aKey = key.rawValue
        return UserDefaults.standard.string(forKey: aKey)
    }
    
}

extension UserDefaults{
    struct AccountInfo: UserDefaultsSettable {
        enum defaultKeys:String{
            
            case userName
            case tel
            case id
            case address
            case avatar
            case Authorization
        }
    }
    
}
