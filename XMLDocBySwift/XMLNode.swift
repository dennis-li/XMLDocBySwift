//
//  XMLNode.swift
//  XMLDocBySwift
//
//  Created by lixu on 16/11/7.
//  Copyright © 2016年 lixu. All rights reserved.
//

import Cocoa

class XMLNode: Node {
    
    override init(name: String, text: String) {
        super.init(name: name, text: text)
    }
    
    //打印当前结点，及其后代结点
    func printCurrentXMLNodes() -> () {
        print(self.currentXMLNodes())
    }
    
    //当前结点，及其后代转化成字符串
    func currentXMLNodes() -> String {
        
        //结点名称
        var currentNodeString = "<\(self.getName())"
        
        //所有属性
        for (key,value) in self.getPropertyDictionary() {
            let property = value 
            currentNodeString += " \(key)=\"\(property.getName())\""
        }
        
        currentNodeString += ">"
        
        //是否有文本，有则换行
        var text: String?
        text = getText()
        if text != "" {
            currentNodeString += "\(text!)"
        } else {
            currentNodeString += "\n"
        }
        
        //子结点转换为字符串
        for child in self.allChildren() {
            var string: String?
            let node = child as! XMLNode
            string = node.currentXMLNodes()
            currentNodeString += string!
        }
        
        //XML结束标志
        currentNodeString += "</\(self.getName())>\n"
        return currentNodeString
    }

}
