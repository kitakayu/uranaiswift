//
//  ViewController.swift
//  uranai
//
//  Created by masahide on 2014/10/23.
//  Copyright (c) 2014年 masahide. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //ラベル
    @IBOutlet weak var uranaiLabel: UILabel!
    
    //ボタンを押されたときの処理
    @IBAction func uranaiButton(sender: AnyObject) {
        var moji : String
        var random : Int = Int(arc4random())%10
        switch random {
            case 1, 2, 3 :
                moji = "中吉"
                break
            case 4, 5 :
                moji = "凶"
                break
            case 6 :
                moji = "大吉"
                break
            default :
                moji = "末吉"
                break
        }
        
        
        uranaiLabel.text = moji
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

