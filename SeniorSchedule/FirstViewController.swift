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
    
    @IBOutlet weak var time1: UILabel!
    @IBOutlet weak var timeToTime: UILabel!
    @IBOutlet weak var time2: UILabel!
    @IBOutlet weak var typeClass: UILabel!
    @IBOutlet weak var subject: UILabel!
    @IBOutlet weak var typePractice: UILabel!
    @IBOutlet weak var which: UILabel!
    @IBOutlet weak var range1: UILabel!
    @IBOutlet weak var rangeToRange: UILabel!
    @IBOutlet weak var range2: UILabel!
    @IBOutlet weak var typeRange: UILabel!
    
    var time1String = String()
    var timeToTimeString = String()
    var time2String = String()
    var typeClassString = String()
    var subjectString = String()
    var typePracticeString = String()
    var whichString = String()
    var range1String = String()
    var rangeToRangeString = String()
    var range2String = String()
    var typeRangeString = String()
    
    
    
    func textView() {
        let textView = UITextView(frame: CGRectMake(20.0, 30.0, 300.0, 30.0))
        textView.textAlignment = NSTextAlignment.Center
        textView.textColor = UIColor.blueColor()
        textView.backgroundColor = UIColor.redColor()
        self.view.addSubview(textView)
    }
    
    
    func segue(){
        if time2String == "" {
            timeToTime.text = ""
        }else{
            timeToTime.text = "~"
        }
        if range2String == ""{
            rangeToRange.text = ""
            which.text = "第"
        }else{
            rangeToRange.text = "~"
            which.text = ""
        }
        time1.text = time1String
        time2.text = time2String
        typeClass.text = typeClassString
        subject.text = subjectString
        typePractice.text = typePracticeString
        range1.text = range1String
        range2.text = range2String
        typeRange.text = typeRangeString
        
        var label = UILabel(frame: CGRectMake(0, 0, 200, 21))
        label.center = CGPointMake(160, 284)
        label.textAlignment = NSTextAlignment.Center
        label.text = "I'am a test label"
        self.view.addSubview(label)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.calenderImage.image = UIImage(named: "calender")
        self.moodImage.image = UIImage(named: "mood")
        self.dogpawImage.image = UIImage(named: "dogpaw")
        segue()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

