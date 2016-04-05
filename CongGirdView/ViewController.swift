//
//  ViewController.swift
//  CongGirdView
//
//  Created by David on 16/3/30.
//  Copyright (c) 2016年 David. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var cgv = CongGridView(frame: view.frame, x: 10, y: 9)
        view.addSubview(cgv)
        cgv.MarginX = 1
        cgv.MarginY = 1
        cgv.resetFrame(CGRectMake(20, 20, 300, 300))
        cgv.setAllBGColor(UIColor.blackColor())
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

