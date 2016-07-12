//
//  CongGridView.swift
//  CongGirdView
//
//  Created by David on 16/4/5.
//  Copyright (c) 2016年 David. All rights reserved.
//

import UIKit

class CongGridView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        addGrid()
        
    }
    init(frame: CGRect, x: Int, y:Int) {
        super.init(frame: frame)
        if x>0 && y>0{
            numOfX = x
            numOfY = y
            addGrid()
        }else{
            print("Grid must have at least 1 row or 1 list")
        }
        
    }
    convenience init(cell: UIView, x: Int, y: Int) {
        super.init(frame: CGRect(x: cell.frame.origin.x, y: cell.frame.origin.y, width: (cell.frame.width+marginX)*CGFloat(x), height: (cell.frame.height+marginY)*CGFloat(y))
        numOfX = x
        numOfY = y
        addGrid(cell)
    }
    private func addGrid(){
        width = (frame.width-marginX)/CGFloat(numOfX)-marginX
        height = (frame.height)/CGFloat(numOfY)-marginY
        for i in 0..<numOfY{
            cell.append([])
            for j in 0..<numOfX{
                let brick = UIView(frame: CGRectMake(marginX*CGFloat(j+1)+width*CGFloat(j), marginY*CGFloat(i+1)+height*CGFloat(i), width, height))
                cell[i].append(brick)
                cell[i][j].backgroundColor = defaultColor
                self.addSubview(cell[i][j])
            }
        }
    }
    private func addGrid(view:UIView){
        width = view.frame.width
        height = view.frame.height
        for i in 0..<numOfY{
            cell.append([])
            for j in 0..<numOfX{
                cell[i].append(view)
                self.addSubview(cell[i][j])
            }
        }
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private var numOfX:Int = 6
    var NumOfX:Int{
        get{
            return numOfX
        }
    }
    private var numOfY:Int = 6
    var NumOfY:Int{
        get{
            return numOfY
        }
    }
    private var marginX:CGFloat = 2
    var MarginX:CGFloat{
        get{
            return marginX
        }
        set(value){
            marginX = value
            reloadGrid()
            
        }
    }
    private var marginY:CGFloat = 2
    var MarginY:CGFloat{
        get{
            return marginY
        }
        set(value){
            marginY = value
            reloadGrid()
            
        }
    }
    private var width:CGFloat!
    private var height:CGFloat!
    var cell:[[UIView!]] = []
    private var defaultColor = UIColor.grayColor()
    private func reloadGrid(){
        for i in cell{
            for j in i{
                j.removeFromSuperview()
            }
        }
        width = (frame.width-marginX)/CGFloat(numOfX)-marginX
        height = (frame.height)/CGFloat(numOfY)-marginY
        for i in 0..<numOfY{
            for j in 0..<numOfX{
                cell[i][j].frame = CGRectMake(marginX*CGFloat(j+1)+width*CGFloat(j), marginY*CGFloat(i)+height*CGFloat(i), width, height)
                self.addSubview(cell[i][j])
            }
        }
        
    }
    func resetFrame(frame:CGRect){
        super.frame = frame
        reloadGrid()
    }
    func setAllBGColor(c:UIColor){
        for i in cell{
            for j in i{
                j.backgroundColor = c
            }
        }
    }
    
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
