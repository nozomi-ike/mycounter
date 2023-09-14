//
//  ViewController.swift
//  mycounter
//
//  Created by nozomi on 2023/09/13.
//  Copyright © 2023年 nozomi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myLabel: UILabel!
    
    var num:Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //プラスボタンを押した時の処理
    @IBAction func plusB(_ sender: Any) {
        
        num += 1
        
        myLabel.text = String(num)
    }
    
    //マイナスボタンを押した時の処理
    @IBAction func minusB(_ sender: Any) {
        
        //num -=1
        //もし0より大きければ減数する
        if ( num>0 ) {
            
            num -= 1
        
        }
        myLabel.text = String(num)
    }
    
    //リセットボタンを押した時の処理
    @IBAction func resetB(_ sender: Any) {
        num = 0
        
        myLabel.text = String(num)
    }
    
}

