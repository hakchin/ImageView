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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnResizeImage(sender: UIButton) {
    }

    @IBAction func swt(sender: UISwitch) {
    }
    
}

