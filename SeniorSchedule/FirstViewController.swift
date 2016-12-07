//
//  ViewController.swift
//  SeniorSchedule
//
//  Created by Sunny on 2016/8/21.
//  Copyright © 2016年 Sunny. All rights reserved.


import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var calenderImage: UIImageView!
    @IBOutlet weak var moodImage: UIImageView!
    @IBOutlet weak var dogpawImage: UIImageView!
    
    func textView() {
        let textView = UITextView(frame: CGRect(x: 800, y: 300, width: 800.0, height: 30.0))
        textView.center = CGPoint(x: 200, y: 200)
        textView.textAlignment = NSTextAlignment.center
        textView.font = UIFont(name: "systemFont", size: 30)
        textView.textColor = UIColor.blue
        textView.backgroundColor = UIColor.red
        textView.text = "hello please work"
        self.view.addSubview(textView)
    }
    
    func label(){
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        label.center = CGPoint(x: 300, y: 284)
        label.textAlignment = NSTextAlignment.center
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

