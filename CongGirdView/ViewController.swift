//
//  ViewController.swift
//  CongGirdView
//
//  Created by David on 16/3/30.
//  Copyright (c) 2016年 David. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numOfX:Int!
    var numOfY:Int!
    var marginX:CGFloat!
    var marginY:CGFloat!
    var blankBoard:CGFloat!
    
    var containerWidth:CGFloat!
    var containerHeight:CGFloat!
    
    var width:CGFloat!
    var height:CGFloat!
    
    var wall:[[UIView!]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        numOfX = 7
        numOfY = 7
        
        marginX = 2.0
        marginY = 2.0
        
        blankBoard = 60.0
        
        if  NSString(string: UIDevice.currentDevice().systemVersion).doubleValue < 8.0{
            containerHeight = view.bounds.width
            containerWidth = view.bounds.height
        }else{
            containerWidth = view.bounds.width
            containerHeight = view.bounds.height
        }
        
        width = (containerWidth-marginX)/CGFloat(numOfX)-marginX
        height = (containerHeight-200)/CGFloat(numOfY)-marginY
        for i in 0..<numOfY{
            wall.append([])
            for j in 0..<numOfX{
                var brick = UIView(frame: CGRectMake(marginX*CGFloat(j+1)+width*CGFloat(j), blankBoard+marginY*CGFloat(i)+height*CGFloat(i), width, height))
                wall[i].append(brick)
                wall[i][j].backgroundColor = UIColor.redColor()
                view.addSubview(wall[i][j])
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

