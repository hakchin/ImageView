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

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var btnResize: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imgOn  = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        
        imgView.image = imgOn
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnResizeImage(sender: UIButton) {
        let scale:CGFloat = 2.0
        var newWidth:CGFloat, newHeight:CGFloat
        
        if (isZoom){ //true
            newWidth = imgView.frame.width/scale
            newHeight = imgView.frame.height/scale
            imgView.frame.size = CGSize(width: newWidth, height: newHeight)
            btnResize.setTitle("확대", forState: .Normal)
        }
        else{ //false
            newWidth = imgView.frame.width*scale
            newHeight = imgView.frame.height*scale
            imgView.frame.size = CGSize(width: newWidth, height: newHeight)
            btnResize.setTitle("축소", forState: .Normal)
        }
        isZoom = !isZoom
    }
    
    @IBAction func swhImageOnOff(sender: UISwitch) {
        if sender.on{
            imgView.image = imgOn
        } else {
            imgView.image = imgOff
        }
    }
    
}

