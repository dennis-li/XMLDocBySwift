//
//  Document.swift
//  XMLDocBySwift
//
//  Created by lixu on 16/11/7.
//  Copyright © 2016年 lixu. All rights reserved.
//

import Cocoa

class Document: NSObject {
    
    //版本
    private var version: String?
    
    //编码
    private var encoding: String?
    
    //文档根结点
    private var root: XMLNode?
    
    init?(version: String?,encoding: String?,root: XMLNode?) {
        //如果没有版本，编码，则用默认值
        if version != "" {
            self.version = version;
        }else {
           self.version = "1.0"
        }
        
        if encoding != "" {
            self.encoding = encoding
        } else {
            self.encoding = "UTF-8"
        }
        
        if root != nil {
            self.root = root
        } else {
            return nil
        }
    }
    
    //获取版本号
    func getVersion() -> String {
        return self.version!
    }
    
    //获取编码方式
    func getEncoding() -> String {
        return self.encoding!
    }
    
    //返回文档根结点
    func currentRoot() -> XMLNode {
        var root:XMLNode?
        if self.root != nil {
            root = self.root
        }
        return root!
    }
}
