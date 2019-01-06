//
//  ViewController.swift
//  scientistDate
//
//  Created by 20161104575 on 2018/9/26.
//  Copyright © 2018年 20161104575. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var text_1: UITextField!
    
    @IBOutlet weak var text_2: UITextField!
    
    @IBOutlet weak var text: UILabel!
    var number = 0 //number的值用来决定运算符号
    var judge = 0 //用来记录小数点出现的次数
    var add = 0  //运算符计数
    var te = 0   //判断text.text前是否存在符号
    @IBAction func one(_ sender: Any) {
//        if te == 1{
//            text.text = "1"
//            text_2.text = "1"
//        }else{
            text.text = text.text! + "1"
            text_2.text = text_2.text! + "1"
//        }
    }
    @IBAction func two(_ sender: Any) {
            text.text = text.text! + "2"
            text_2.text = text_2.text! + "2"
    }
    
    @IBAction func three(_ sender: Any) {
            text.text = text.text! + "3"
            text_2.text = text_2.text! + "3"
    }
    
    @IBAction func four(_ sender: Any) {
            text.text = text.text! + "4"
            text_2.text = text_2.text! + "4"
    }
    
    @IBAction func five(_ sender: Any) {
            text.text = text.text! + "5"
            text_2.text = text_2.text! + "5"
    }

    @IBAction func six(_ sender: Any) {
            text.text = text.text! + "6"
            text_2.text = text_2.text! + "6"
    }
    
    @IBAction func seven(_ sender: Any) {
            text.text = text.text! + "7"
            text_2.text = text_2.text! + "7"
    }
    
    @IBAction func eight(_ sender: Any) {
            text.text = text.text! + "8"
            text_2.text = text_2.text! + "8"
    }
    
    @IBAction func nine(_ sender: Any) {
            text.text = text.text! + "9"
            text_2.text = text_2.text! + "9"
    }
    
    @IBAction func zero(_ sender: Any) {
        if number == 4{
            text_2.text = "不能除以0"
        }
        else{
            text.text = text.text! + "0"
            text_2.text = text_2.text! + "0"
        }
    }
    
    //+
//    @IBAction func add(_ sender: Any) {
//        if add == 1{
//            let a = Double(text_1.text!)!
//            let b = Double(text_2.text!)!
//            let c = a + b
//            text_1.text = String(c)
//            text.text = text.text! + "+"
//            text_2.text = ""
//            number = 1
//            judge = 0
//        }else{
//            if text_2.text == ""{
//                text_2.text = "0"
//                text.text = "0"
//            }else {
//                let x = Double(text_2.text!)!
//                text_1.text = String(x)
//                text.text = text.text! + "+"
//                text_2.text = ""
//                number = 1
//                judge = 0
//            }
//        }
//    }
    @IBAction func add(_ sender: Any) {
        if add == 1{
            let a = Double(text_1.text!)!
            let b = Double(text_2.text!)!
            let c = a + b
            text_1.text = String(c)
            text.text = text.text! + "+"
            text_2.text = ""
            number = 1
            judge = 0
        }else{
            if text_2.text == "" || text.text == ""{
                text_2.text = "0"
                text.text = "0"
            }else {
                let x = Double(text_2.text!)!
                text_1.text = String(x)
                text.text = text.text! + "+"
                text_2.text = ""
                number = 1
                judge = 0
            }
        }
    }
    
    //-
    @IBAction func minus(_ sender: Any) {
        if add == 1{
            let a = Double(text_1.text!)!
            let b = Double(text_2.text!)!
            let c = a - b
            text_1.text = String(c)
            text.text = text.text! + "-"
            text_2.text = ""
            number = 2
            judge = 0
        }else{
            if text_2.text == "" || text.text == ""{
                text_2.text = "0"
                text.text = "0"
            }else {
                let x = Double(text_2.text!)!
                text_1.text = String(x)
                text.text = text.text! + "-"
                text_2.text = ""
                number = 2
                judge = 0
            }
        }
    }
    //乘
    @IBAction func multiply(_ sender: Any) {
        if add == 1{
            let a = Double(text_1.text!)!
            let b = Double(text_2.text!)!
            let c = a * b
            text_1.text = String(c)
            text.text = text.text! + "*"
            text_2.text = ""
            number = 3
            judge = 0
        }else{
            if text_2.text == "" || text.text == ""{
                text_2.text = "0"
                text.text = "0"
            }else {
                let x = Double(text_2.text!)!
                text_1.text = String(x)
                text.text = text.text! + "*"
                text_2.text = ""
                number = 3
                judge = 0
            }
        }
    }
    //除
    @IBAction func divide(_ sender: Any) {
        if add == 1{
            let a = Double(text_1.text!)!
            let b = Double(text_2.text!)!
            let c = a / b
            text_1.text = String(c)
            text.text = text.text! + "➗"
            text_2.text = ""
            number = 4
            judge = 0
        }else{
            if text_2.text == "" || text.text == ""{
                text_2.text = "0"
                text.text = "0"
            }else {
                let x = Double(text_2.text!)!
                text_1.text = String(x)
                text.text = text.text! + "➗"
                text_2.text = ""
                number = 4
                judge = 0
            }
        }
    }
    //等于
    @IBAction func equal(_ sender: Any) {
        var date: Double = 1
        var c: Double
        let x = Double(text_1.text!)!
        //强制类型转换方法2，将字符串转换为double类型
        c = (text_2.text! as NSString).doubleValue
        if number == 1{
            date = x + c
        }else if number == 2{
            date = x - c
        }else if number == 3{
            date = x * c
        }else if number == 4{
            date = x / (c)
        }
       
        if judge == 1 || judge == 0{
            
            text_2.text = String(format:"%lf", date)
            while text_2.text?.last == "0"{
                text_2.text?.removeLast()
            }
            if text_2.text?.last == "."{
                text_2.text?.removeLast()
            }
        }else {
            text_2.text = String(format:"%lf", date)
        }
        text.text = text_2.text!
        judge = 0
        add = 0
    }
    //小数点
    @IBAction func dot(_ sender: Any) {
        if judge == 0{
            text_2.text = text_2.text! + "."
            text.text = text.text! + "."
            judge = 1
        }
    }
    
  //退格d
    @IBAction func dc(_ sender: Any) {
        var back_text_2 = text_2.text!
        var back_text = text.text!
        if text_2.text! != ""{
            back_text_2.removeLast()
            text_2.text! = back_text_2
        }
        
        if text.text! != ""{
            back_text.removeLast()
            text.text! = back_text
        }
        
    }
    
    
    //清除按钮c
    @IBAction func clear(_ sender: Any) {
        text_1.text = ""
        text.text = ""
        text_2.text = ""
        judge = 0
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

