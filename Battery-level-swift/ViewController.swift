//
//  ViewController.swift
//  Battery-level-swift
//
//  Created by 加藤 周 on 2015/03/14.
//  Copyright (c) 2015年 mycompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // viewの背景色を水色に設定.
        self.view.backgroundColor = UIColor.cyanColor()
        
        // Labelを作成.
        let myLabel = UILabel(frame: CGRectMake(0, 0, 200, 80))
        myLabel.backgroundColor = UIColor.orangeColor()
        myLabel.layer.cornerRadius = 20.0
        myLabel.layer.masksToBounds = true
        myLabel.layer.position = CGPointMake(self.view.frame.width/2, self.view.frame.height/2)
        myLabel.textColor = UIColor.whiteColor()
        myLabel.textAlignment = NSTextAlignment.Center
        self.view.addSubview(myLabel)
        
        // デバイスとバッテリー残量の宣言.
        let myDevice:UIDevice = UIDevice.currentDevice()
        
        // バッテリー状態の監視.
        myDevice.batteryMonitoringEnabled = true
        
        // バッテリー状態の取得.
        // 0.0~1.0で残量表示。残量不明の時は-1.0を返す.
        let batteryLevel = myDevice.batteryLevel
        
        // パーセンテージの値に変換する.
        let convertLevel = batteryLevel * 100
        
        // Labelに得た値を代入する.
        myLabel.text = "\(convertLevel) %"

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

