//
//  Node.swift
//  XMLDocBySwift
//
//  Created by lixu on 16/11/7.
//  Copyright © 2016年 lixu. All rights reserved.
//

import Cocoa

class Node: NSObject {

    //结点的名字
    private var name: String?
    
    //结点的文本
    private var text: String?
    
    //结点的父结点
    private weak var parent: Node?
    
    //子结点数组
    private lazy var children = NSMutableArray()
    
    //属性字典
    private lazy var properties: [String: XMLNodeProperty] = [:]
    
    init(name: String,text: String) {
        self.name = name
        self.text = text
    }
    
    //获取名字
    func getName() -> String {
        return self.name!
    }
    
    //获取文本
    func getText() -> String {
        return self.text!
    }
    
    //添加子结点
    func addChilds(node: Node?) -> (){
        if (node != nil) {
            node?.setParent(parent: self)
            self.children.add(node)
        }
    }
    
    //删除子结点
    func removeChild(node: Node?) -> () {
        if node != nil {
            self.children.remove(node)
        }
    }
    
    //获取所有子结点
    func allChildren() -> NSArray {
        return self.children
    }
    
    //设置父结点
    func setParent(parent: Node?) -> () {
        if parent != nil {
            self.parent = parent
        }
    }

    //获取父结点
    func getParent() -> Node {
        return self.parent!
    }
    
    //添加属性
    func addProperty(property: XMLNodeProperty?) -> () {
        if property != nil {
            let key = property?.getName()
            self.properties.updateValue(property!, forKey: key!)
        }
        
    }
    
    //读取属性
    func readPropertyWithName(name: String?) -> (XMLNodeProperty) {
        var property: XMLNodeProperty?
        if name != nil {
            property = self.properties[name!]
        }
        return property!
    }
    
    //获取所有属性
    func getPropertyDictionary() -> [String: XMLNodeProperty] {
        return self.properties
    }
    
    //删除属性
    func removePropertyWithName(name: String?) -> () {
        if name != nil {
            self.properties.removeValue(forKey: name!)
        }
    }
}
