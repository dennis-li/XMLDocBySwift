//
//  main.swift
//  XMLDocBySwift
//
//  Created by lixu on 16/11/7.
//  Copyright © 2016年 lixu. All rights reserved.
//

import Foundation

print("Hello, World!")

//根结点
var root = XMLNode(name: "CategoryList", text: "")

//一个新的XML文档
var xmlDocument = XMLDocument(version: "1.0", encoding: "UTF-8", root: root)

//CateGory结点
var Category = XMLNode(name: "CateGory", text: "")

//根结点添加子结点
root.addChilds(node: Category)

//ID属性
var categoryProperty = XMLNodeProperty(name: "ID", value: "01")
Category.addProperty(property: categoryProperty)

//MianCategory结点
var MainCategory = XMLNode(name: "MainCateGory", text: "XML")

//Description结点
var Description = XMLNode(name: "Description", text: "This is a list my XML articles.")

//Active结点
var Active = XMLNode(name: "Active", text: "true")

//Category添加子结点
Category.addChilds(node: MainCategory)
Category.addChilds(node: Description)
Category.addChilds(node: Active)

var XMLDocumentString = xmlDocument.XMLDocumentString()
print(XMLDocumentString)

/*
var property = XMLNodeProperty(name: "ID", value: "10")
var node = XMLNode(name: "child", text: "This is child")
root.addChilds(node: node)
root.addProperty(property: property)
root.printCurrentXMLNodes()*/
