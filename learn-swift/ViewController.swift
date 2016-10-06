//
//  ViewController.swift
//  learn-swift
//
//  Created by kevingao on 16/10/5.
//  Copyright © 2016年 kevingao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //打印变量和常量
        self.test_1();
        
        //基本运算
        self.test_2();
        
        //字符串和字符
        self.test_3();
        
        //集合类型
        self.test_4();
        
        //控制流--没有返回值的函数，返回值Void其实是一个空的元祖
        let value : () = self.test_5();
        print("value : \(value)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //打印变量和常量
    func test_1() -> Void {
        
        ///!!!注意：
        ///1.常量不能被修改
        ///2.如果对一个变量不做修改，Xcode会报警
        /*
            注释
         */
        
        //常量不能被修改
        let value_1 : Int = 10;
        let value_2 : Int = 20;
        
        //如果对一个变量不做修改，Xcode会报警
        var value_3 : Int = 25;
        value_3 = 26;
        
        print("value_1 : ", value_1,"value_2 : ",value_2);
        print("value_3 : ",value_3);
        
        let String_1 : String = "123";
        print("打印字符串 String_1 : ",String_1);
        
        var String_2 : String = "456567";
        String_2 = "dsdad";
        print("打印字符串 String_2 : ",String_2);
        
        //类型安全，所以会报错
        //var String_3 : String = "qwe";
        //String_3 = 123;
        //print("String_3 : ",String_3);
        
        //bool值
        let bool_1 = true;
        let bool_2 = false;
        print("布尔值 bool_1 : ",bool_1,"bool_2 : ",bool_2);
    }

    //基本运算
    func test_2() -> Void {
        
        //赋值
        var a = 100;
        let b = 105;
        a = b;
        print("基本赋值 a: ",a);
        
        //元组赋值
        let (a_1,b_1) = (100,105);
        print("元组赋值 :",(a_1,b_1));
        
        //判断元组是否为空
        if (a_1,b_1) != nil {
            print("元组不为空");
        }else{
            print("元组为空");
        }
        
        //一元负号使用
        let x_1 = 100;
        let x_2 = -x_1;
        print("x_2 : ",x_2);
        
        //一元加号使用
        let x_3 = -200;
        let x_4 = +x_3;
        print("x_4 : ",x_4);

        //空合运算符
        let y_1 : Int? = 101;
        let y_2 : Int? = 102;
        let y_3 = y_1 ?? y_2;
        print("y_3 : ",y_3);

        //区间运算符
        for index_0 in 1...5 {
            print("index_0 : ",index_0);
        }

        //半开区间
        for index_1 in 1..<5 {
            print("index_1 : ",index_1);
        }
    }
    
    //字符串和字符
    func test_3() -> Void {
        
        // 两个字符串均为空并等价。
        let value_1 = "";
        let value_2 = String();
        
        //判断字符串是否等价
        if value_1 == value_2 {
            print(" 两个字符串均为空并等价。");
        }
        
        if value_1.isEmpty {
            print("value_1 值为空");
        }
        
        //字符串可变性
        var string_1 = "12345";
        string_1 += "adskfksd";
        print("string_1 : ",string_1);
        
        //使用字符
        for character in "dogisgood".characters {
            print("character : ",character);
        }
        
        //创建一个字符
        let character : Character = "a";
        print("字符 :",character);
        
        //创建一个字符数组
        let array : [Character] = ["a","b","c","d"];
        let array_string = String(array);
        print("array_string : ",array_string);
        
        //字符串链接--连接字符串和字符
        let String_1 = "高国栋";
        let String_2 = "kevingao";
        let String_3 = String_1 + String_2;
        print("String_3 : ",String_3);
    
        //字符串插值
        print("String_1 : \(String_1) String_2 : \(String_2)");
        
        //打印字符数量
        print("count : \(String_3.characters.count)");
    }
    
    //集合类型
    func test_4() -> Void {
        
        //--------------数组Array-------------------//
        //空数组
        let array_0 : [String] = Array<String>();
        print("array_0 : \(array_0)");
        //不可变的Arrays，Sets，Dictionaries
        let array_1 : [String] = ["a","b","c"];
        //带默认值
        let array_2 : [Int] = [Int](repeating:0,count: 3)
        
        //打印相关
        print("array_1 : \(array_1) array_2 : \(array_2)");
        print("count_1 : \(array_1.count) count_2 : \(array_2.count)");

        //可变数组
        var array_3 : [Int] = [Int](repeating:0,count:4);
        print("array_3 : \(array_3)");
        
        //插入
        array_3.insert(123, at: array_3.count);
        array_3.insert(234, at: array_3.count);
        array_3.insert(567, at: array_3.count);
        print("array_3 : \(array_3)");

        //移除
        array_3.remove(at: 4);
        print("array_3 : \(array_3)");
        
        //尾部添加
        array_3.append(789);
        print("array_3 : \(array_3)");
        
        //遍历数组
        for item in array_3 {
            print(item);
        }
    
        //枚举数组
        for (index,value) in array_3.enumerated() {
            print("index : \(index) value : \(value)");
        }
        
        //--------------集合Set-------------------//
        var set_1 : Set = Set<Int>();
        var set_3 : Set = [1,2,3,5];
        print("set_1 : \(set_1) set_3 : \(set_3)");
        print("count : \(set_1.count) count : \(set_3.count)");

        set_1.insert(123);
        set_3.insert(321);
        print("set_1 : \(set_1) set_3 : \(set_3)");
        print("count : \(set_1.count) count : \(set_3.count)");

        //遍历集合
        for item in set_3 {
            print(item);
        }
        
        //--------------字典Dictionary-------------------//
        let dict_1 = Dictionary<String,String>();
        print("dict_1 : \(dict_1)");
        
        let dict_2 = [1:2,2:3,4:5];
        print("dict_2 : \(dict_2)");
        
        let dict_3 = ["1":"xsd","2":"dfd","3":"dsfs"];
        print("dict_3 : \(dict_3)");
        
        //打印个别元素
        print("object : \(dict_3["1"])");
        print("object : \(dict_3["2"])");
        print("object : \(dict_3["3"])");
    }
    
    //控制流
    func test_5() -> Void {
        
        //for循环
        for index in 1...5 {
            print("index : \(index)");
        }
        
        let a = 10;
        for index in 1...a {
            print("index : \(index)");
        }
        
        //循环数组
        let array = ["1234","sdafs","dgdgfdg","gfhgfhfhg"];
        for item in array {
            print("item : \(item)");
        }
        
        //循环字典
        let dict = ["1":"asd","2":"fdsfs","3":"fsdfds"];
        for (key,value) in dict {
            print("key : \(key) vayle : \(value)");
        }
        
        //if语句
        if dict.count > 0 {
            print("不是空字典");
        }else{
            print("空字典");
        }
        
        //switch语句
        
        let value_1 = "abc";
        
        switch value_1 {
        case "a","b":
            print("1233fdgfd");
            break;
        case "abc":
            print("拉阿拉");
            print("123");
            break;
        case "A":
            print("的所发生的");
            print("123");
            break;
        default:
            print("梵蒂冈地方");
            print("123");
            break;
        }
        
        //还可以区间匹配
        
        let value_2 = 65;
        
        switch value_2 {
        case 0...10:
            print("匹配0")
            break;
        case 10...60:
            print("匹配10...60")
            break;
        case 61...100:
            print("匹配61...100")
            break;
        default:
            print("匹配default")
        }
        
        //guard
        guard false else {
            print("成真");
            return;
        }
    }
    
    //函数
    func test_6() -> Void{
        
        
    }
    
    //闭包
    func test_7() -> Void {
        
        
    }
    
    
    
}

