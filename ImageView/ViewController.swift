//
//  ViewController.swift
//  ImageView
//
//  Created by Hakchin Kim on 8/21/16.
//  Copyright © 2016 Hakchin Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var isZoom = false
    var imgOn:   UIImage?
    var imgOff:  UIImage?
    
    @IBOutlet weak var ivwLamp: UIImageView!
    @IBOutlet weak var btnResize: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imgOn  = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        
        ivwLamp.image = imgOn
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnResizeImage(sender: UIButton) {
        let scale:CGFloat = 2.0
        var newWidth:CGFloat, newHeight:CGFloat
        
        if (isZoom){ //true
            newWidth = ivwLamp.frame.width/scale
            newHeight = ivwLamp.frame.height/scale
            ivwLamp.frame.size = CGSize(width: newWidth, height: newHeight)
            btnResize.setTitle("확대", forState: .Normal)
        }
        else{ //false
            newWidth = ivwLamp.frame.width*scale
            newHeight = ivwLamp.frame.height*scale
            ivwLamp.frame.size = CGSize(width: newWidth, height: newHeight)
            btnResize.setTitle("축소", forState: .Normal)
        }
        isZoom = !isZoom
    }
    
    @IBAction func swhImageOnOff(sender: UISwitch) {
        if sender.on{
            ivwLamp.image = imgOn
        } else {
            ivwLamp.image = imgOff
        }
    }
    
}

