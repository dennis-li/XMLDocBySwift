//
//  XMLNodeProperty.swift
//  XMLDocBySwift
//
//  Created by lixu on 16/11/7.
//  Copyright © 2016年 lixu. All rights reserved.
//

import Cocoa

class XMLNodeProperty: NSObject {

    private var name : String?
    private var value : String?
    
    init(name: String,value: String) {
        self.name = name
        self.value = value
    }
    
    //获取名字
    func getName() -> String {
        return self.name!
    }
    
    //获取属性值
    func getValue() -> String {
        return self.value!
    }
}
