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
        var cgv = CongGridView(frame: view.frame, x: 1, y: 9)
        view.addSubview(cgv)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

