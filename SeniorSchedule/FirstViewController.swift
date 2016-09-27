//
//  ViewController.swift
//  SeniorSchedule
//
//  Created by Sunny on 2016/8/21.
//  Copyright © 2016年 Sunny. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var calenderImage: UIImageView!
    @IBOutlet weak var moodImage: UIImageView!
    @IBOutlet weak var dogpawImage: UIImageView!
    
    func textView() {
        let textView = UITextView(frame: CGRectMake(800, 300, 800.0, 30.0))
        textView.center = CGPointMake(200, 200)
        textView.textAlignment = NSTextAlignment.Center
        textView.font = UIFont(name: "systemFont", size: 30)
        textView.textColor = UIColor.blueColor()
        textView.backgroundColor = UIColor.redColor()
        textView.text = "hello please work"
        self.view.addSubview(textView)
    }
    
    func label(){
        var label = UILabel(frame: CGRectMake(0, 0, 200, 21))
        label.center = CGPointMake(300, 284)
        label.textAlignment = NSTextAlignment.Center
        label.text = "I'am a test label"
        self.view.addSubview(label)
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.calenderImage.image = UIImage(named: "calender")
        self.moodImage.image = UIImage(named: "mood")
        self.dogpawImage.image = UIImage(named: "dogpaw")
        //
        //label()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

