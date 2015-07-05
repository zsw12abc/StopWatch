//
//  ViewController.swift
//  StopWatch
//
//  Created by Shaowei Zhang on 15/7/5.
//  Copyright © 2015年 Shaowei Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    var count = 0
    
    @IBOutlet weak var time: UILabel!
    
    func updateTime(){
        count++
        time.text = "\(count)"
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }

    @IBAction func stop(sender: AnyObject) {
        timer.invalidate()
        //重置 count
        count = 0
        time.text = "0"
    
    }
    
    @IBAction func play(sender: AnyObject) {
        //相隔时间1秒, target 是这个 ViewController, 没有 userInfo, 需要一直重复
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateTime"), userInfo: nil, repeats: true)
    }
}

