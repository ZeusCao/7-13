//
//  ViewController.swift
//  7-13-加载百度数据
//
//  Created by Zeus on 2017/7/13.
//  Copyright © 2017年 Zeus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // URL的构造函数可以返回nil
        // 构造函数就是用来实例化对象的
        let url = URL(string: "http://www.baidu.com")
        
        // 发送网络请求
        // 和oc的区别，闭包的参数需要自己写，oc是直接带入的
        // 如果不关心的值可以
        URLSession.shared.dataTask(with: url!) { (data, _, error) in
//            if (error != nil)
//            {
//                print("网络请求失败")
//                return
//            }
            
            guard let data = data else{
                print("网络请求失败\(error)")
                return
            }
            
            // 将data转化为string
            let html = String(data: data, encoding: .utf8)
            print(html)
            
        }.resume()
        
        
        //********************************* 利用便利构造函数判断对象创建条件 **************************************
        let p = Person(name: "老王", age: 100)
        print(p?.name)
        
        
        
    }

   

}

