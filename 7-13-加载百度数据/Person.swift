//
//  Person.swift
//  7-13-加载百度数据
//
//  Created by Zeus on 2017/7/14.
//  Copyright © 2017年 Zeus. All rights reserved.
//

import UIKit

class Person: NSObject {

    var name: String?
    var age: Int = 0
    
    /**
        1.便利构造函数允许返回nil
          --- 正常的构造函数一定会创建对象
          --- 判断给定的参数是否符合条件，如果不符合条件直接返回nil，就不会去创建对象，减少内存的开销
        2.只有便利构造函数中使用“self.init”，构造当前对象
          --- 没有 convenient 关键字的构造函数是用来创建对象的，反之是用来检查条件的，本身不负责对象的创建
        3.如果要在便利构造函数中使用当前对象的的属性，你定要在self.init之后
     */
    
    
    // 重载构造函数
    convenience init?(name: String, age: Int){
        if age > 100 {
            return nil
        }
        
        // 在访问self.name之前，应该先调用self.init
        self.init()
        
        // 执行到此self才允许被访问，才能够访问到对象的属性
        self.name = name
        
        
    }
    
    // 没有func --- 不让调用
    // 没有() --- 不让重载
    // 在对象被销毁前自动调用
    deinit {
        // 1.跟踪对象的销毁
        // 2.必须释放的
           /**
              ---通知： 不释放不会造成崩溃，但会造成内存泄漏
              ---KVO:  不释放会崩溃
              ---NSTimer/CADisplayLink
           
           */
    }
    
    
    
    
}





