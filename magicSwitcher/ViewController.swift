//
//  ViewController.swift
//  magicSwitcher
//
//  Created by  yanglc on 15/12/1.
//  Copyright © 2015年  yanglc. All rights reserved.
//

import UIKit

class ViewController: UIViewController,RSCameraRotatorDelegate {

    var rotator:RSCameraRotator!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        self.view.backgroundColor = UIColor.blackColor();
       
        self.rotator  = RSCameraRotator(frame: CGRectMake(100, 100, 165, 50));
        self.rotator.tintColor = UIColor.blackColor();
        self.rotator.offColor = colorWithARGBHex(0xff498e14);
        self.rotator.onColorLight  = colorWithARGBHex(0xff498e14);
        self.rotator.onColorDark = colorWithARGBHex(0xff66a61b);
        self.rotator.delegate = self;
        self.view.addSubview(self.rotator);
            
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func colorWithARGBHex(hex:UInt32)->UIColor{
        let b = hex & 0x000000FF;
        let g = ((hex & 0x0000FF00) >> 8);
        let r = ((hex & 0x00FF0000) >> 16);
        let a = ((hex & 0xFF000000) >> 24);
        
       return  UIColor(red: CGFloat(Float(b) / Float(255)), green:  CGFloat(Float(g) / Float(255)), blue:  CGFloat(Float(b) / Float(255)), alpha:  CGFloat(Float(a) / Float(255)));
        }
    
    func clicked(isFront: Bool) {
        if(isFront){
            
            print("true")
        }else{
            print("false")
        }
        
    }
    
  


}

