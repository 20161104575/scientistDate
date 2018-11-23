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
    var number = 0
    var judge = 0
    var add = 0
    var re = 0
    @IBAction func one(_ sender: Any) {
        if re == 1{
            text.text = "1"
            text_2.text = "1"
        }else{
            text.text = text.text! + "1"
            text_2.text = text_2.text! + "1"
        }
    }
    @IBAction func two(_ sender: Any) {
        if re == 1{
            text.text = "2"
            text_2.text = "2"
        }else{
            text.text = text.text! + "2"
            text_2.text = text_2.text! + "2"
        }
    }
    
    @IBAction func three(_ sender: Any) {
        if re == 1{
            text.text = "3"
            text_2.text = "3"
        }else{
            text.text = text.text! + "3"
            text_2.text = text_2.text! + "3"
        }
    }
    
    @IBAction func four(_ sender: Any) {
        if re == 1{
            text.text = "4"
            text_2.text = "4"
        }else{
            text.text = text.text! + "4"
            text_2.text = text_2.text! + "4"
        }
    }
    
    @IBAction func five(_ sender: Any) {
        if re == 1{
            text.text = "5"
            text_2.text = "5"
        }else{
            text.text = text.text! + "5"
            text_2.text = text_2.text! + "5"
        }
    }

    @IBAction func six(_ sender: Any) {
        if re == 1{
            text.text = "6"
            text_2.text = "6"
        }else{
            text.text = text.text! + "6"
            text_2.text = text_2.text! + "6"
        }
    }
    
    @IBAction func seven(_ sender: Any) {
        if re == 1{
            text.text = "7"
            text_2.text = "7"
        }else{
            text.text = text.text! + "7"
            text_2.text = text_2.text! + "7"
        }
    }
    
    @IBAction func eight(_ sender: Any) {
        if re == 1{
            text.text = "8"
            text_2.text = "8"
        }else{
            text.text = text.text! + "8"
            text_2.text = text_2.text! + "8"
        }
    }
    
    @IBAction func nine(_ sender: Any) {
        if re == 1{
            text.text = "9"
            text_2.text = "9"
        }else{
            text.text = text.text! + "9"
            text_2.text = text_2.text! + "9"
        }
    }
    
    @IBAction func zero(_ sender: Any) {
        if number == 4{
            text_2.text = "不能除以0"
        }
        else if re == 1{
            text.text = "0"
            text_2.text = "0"
        }else{
            text.text = text.text! + "0"
            text_2.text = text_2.text! + "0"
        }
    }
    @IBAction func add(_ sender: Any) {
        if add == 1{
            let a = Double(text_1.text!)!
            let b = Double(text_2.text!)!
            let c = a + b
            text_1.text = String(c)
            text.text = text.text! + "+"
            text_2.text = ""
            number = 1
            re = 1
        }else{
            if text_2.text == ""{
                text_2.text = "0"
            }else {
                let x = Double(text_2.text!)!
                text_1.text = String(x)
                text.text = text.text! + "+"
                text_2.text = ""
                number = 1
                re = 0
            }
        }
    }
    @IBAction func minus(_ sender: Any) {
        if add == 1{
            let a = Double(text_1.text!)!
            let b = Double(text_2.text!)!
            let c = a - b
            text_1.text = String(c)
            text.text = text.text! + "-"
            text_2.text = ""
            number = 2
            re = 1
        }else{
            if text_2.text == ""{
                text_2.text = "0"
            }else {
                let x = Double(text_2.text!)!
                text_1.text = String(x)
                text.text = text.text! + "-"
                text_2.text = ""
                number = 2
                re = 0
            }
        }
    }
    
    @IBAction func multiply(_ sender: Any) {
        if add == 1{
            let a = Double(text_1.text!)!
            let b = Double(text_2.text!)!
            let c = a * b
            text_1.text = String(c)
            text.text = text.text! + "*"
            text_2.text = ""
            number = 3
            re = 1
        }else{
            if text_2.text == ""{
                text_2.text = "0"
            }else {
                let x = Double(text_2.text!)!
                text_1.text = String(x)
                text.text = text.text! + "*"
                text_2.text = ""
                number = 3
                re = 0
            }
        }
    }
    
    @IBAction func divide(_ sender: Any) {
        if add == 1{
            let a = Double(text_1.text!)!
            let b = Double(text_2.text!)!
            let c = a / b
            text_1.text = String(c)
            text.text = text.text! + "➗"
            text_2.text = ""
            number = 4
            re = 1
        }else{
            if text_2.text == ""{
                text_2.text = "0"
            }else {
                let x = Double(text_2.text!)!
                text_1.text = String(x)
                text.text = text.text! + "➗"
                text_2.text = ""
                number = 4
                re = 0
            }
        }
    }

    @IBAction func equal(_ sender: Any) {
        var d: Double
        var c: Double
        let x = Double(text_1.text!)!
        c = (text_2.text! as NSString).doubleValue
        if number == 1{
            d = x + c
        }else if number == 2{
            d = x - c
        }else if number == 3{
            d = x * c
        }else if number == 4{
            d = x / (c)
        }
        else {
            d = 1000
        }
        if judge == 1{
            text_2.text = String(format:"%.9f", d)
        }else {
            text_2.text = String(format:"%.9f", d)
        }
        text.text = text_2.text!
        re = 1
        judge = 0
        add = 0
    }
    
    @IBAction func dot(_ sender: Any) {
        text_2.text = text_2.text! + "."
        text.text = text.text! + "."
        judge = 1
    }
    
    @IBAction func dc(_ sender: Any) {
        if text_2.text != "" || !(text_2.text?.isEmpty)!{
            text_2.text?.remove(at: (text_2.text?.index(before: (text_2.text?.endIndex)!))!)
        }
    }
    @IBAction func clear(_ sender: Any) {
        text_1.text = ""
        text.text = ""
        text_2.text = ""
        re = 0
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

