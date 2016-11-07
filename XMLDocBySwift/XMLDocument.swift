//
//  XMLDocument.swift
//  XMLDocBySwift
//
//  Created by lixu on 16/11/7.
//  Copyright © 2016年 lixu. All rights reserved.
//

import Cocoa

class XMLDocument: Document {

    override init(version: String?, encoding: String?, root: XMLNode?) {
        super.init(version: version, encoding: encoding, root: root)!
    }
    
    func XMLDocumentString() -> String {
        let rootString = self.currentRoot().currentXMLNodes()
        let version = self.getVersion()
        let encoding = self.getEncoding()
        let xmlHeadString = "\n<?xml version=\"\(version)\" encoding=\"\(encoding)\"?>\n"
        return xmlHeadString + rootString
    }
}
